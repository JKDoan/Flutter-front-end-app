package com.example.tech_prototype_equine_integration

import android.appwidget.AppWidgetManager
import android.content.ComponentName
import android.os.Build
import androidx.annotation.RequiresApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    //set up channel name with same name as in flutter
    private val CHANNEL = "widget"

    // configure the flutter engine and methodchannel
    @RequiresApi(Build.VERSION_CODES.O)
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            //set handler to the methodchannel
            .setMethodCallHandler { call, result ->
                //call function if message is showWidgetPin
                if (call.method == "showWidgetPin") {
                    requestPinAppWidget()
                    result.success(null)
                } else {
                    result.notImplemented()
                }
            }
    }
    //function to request user to pin widget to homescreen through pop-up
    @RequiresApi(Build.VERSION_CODES.O)
    private fun requestPinAppWidget() {
        //define widget manager and specific widget to show in the pop-up
        val appWidgetManager = AppWidgetManager.getInstance(this)
        val myProvider = ComponentName(this, EquineWidget2x4::class.java)

        //if pin widget is supported in android version, call pin widget pop-up
        if (appWidgetManager.isRequestPinAppWidgetSupported) {
            appWidgetManager.requestPinAppWidget(myProvider, null, null)
        }
    }
}


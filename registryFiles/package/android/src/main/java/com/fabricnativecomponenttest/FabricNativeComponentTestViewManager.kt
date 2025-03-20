package com.fabricnativecomponenttest

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.uimanager.annotations.ReactProp
import com.facebook.react.viewmanagers.FabricNativeComponentTestViewManagerInterface
import com.facebook.react.viewmanagers.FabricNativeComponentTestViewManagerDelegate

@ReactModule(name = FabricNativeComponentTestViewManager.NAME)
class FabricNativeComponentTestViewManager : SimpleViewManager<FabricNativeComponentTestView>(),
  FabricNativeComponentTestViewManagerInterface<FabricNativeComponentTestView> {
  private val mDelegate: ViewManagerDelegate<FabricNativeComponentTestView>

  init {
    mDelegate = FabricNativeComponentTestViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<FabricNativeComponentTestView>? {
    return mDelegate
  }

  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): FabricNativeComponentTestView {
    return FabricNativeComponentTestView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: FabricNativeComponentTestView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "FabricNativeComponentTestView"
  }
}

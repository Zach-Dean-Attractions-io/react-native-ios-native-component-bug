package com.fabricnativecomponenttest

import android.content.Context
import android.util.AttributeSet
import android.view.View

class FabricNativeComponentTestView : View {
  constructor(context: Context?) : super(context)
  constructor(context: Context?, attrs: AttributeSet?) : super(context, attrs)
  constructor(context: Context?, attrs: AttributeSet?, defStyleAttr: Int) : super(
    context,
    attrs,
    defStyleAttr
  )
}

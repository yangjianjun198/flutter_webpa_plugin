package com.yjj.flutter_wepack_plugin;

import android.content.Context;
import android.widget.Toast;

/**
 * created by yangjianjun on 2019-07-12
 */
public class WebpackSayer {
    private Context context;

    public WebpackSayer(Context context) {
        this.context = context;
    }

    public void toast() {
        Toast.makeText(context, "I am webpack", Toast.LENGTH_SHORT).show();
    }
}

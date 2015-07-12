package com.example.androidbinarysender;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends ActionBarActivity {
	final int ACTIVITY_CHOOSE_FILE = 1;
	private EditText etName;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		etName = (EditText) this.findViewById(R.id.editText1);
	    Button btn = (Button) this.findViewById(R.id.button01);
	    Button inst = (Button) this.findViewById(R.id.installed);
	    btn.setOnClickListener(new OnClickListener() {
	      @Override
	      public void onClick(View v) {
	        Intent chooseFile;
	        Intent intent;
	        chooseFile = new Intent(Intent.ACTION_GET_CONTENT);
	        chooseFile.setType("file/*");
	        intent = Intent.createChooser(chooseFile, "Choose a file");
	        startActivityForResult(intent, ACTIVITY_CHOOSE_FILE);
	      }
	    });
	    

	    inst.setOnClickListener(new OnClickListener() {
	      @Override
	      public void onClick(View v) {
	    	  if(isPackageInstalled("usbong.android", MainActivity.this)) {
	    		  Toast.makeText(MainActivity.this, "Usbong is installed", Toast.LENGTH_SHORT).show();
	    	  } else {
	    	        try {
	                    Intent viewIntent =
	                    new Intent("android.intent.action.VIEW",
	                    Uri.parse("https://play.google.com/store/apps/details?id=usbong.android"));
	                    startActivity(viewIntent);
	        }catch(Exception e) {
	            Toast.makeText(getApplicationContext(),"Unable to Connect Try Again...",
	                    Toast.LENGTH_LONG).show();
	            e.printStackTrace();
	        }
	    	  }
	      }
	    });

	}
	
	  @Override
	  protected void onActivityResult(int requestCode, int resultCode, Intent data) {
	    switch(requestCode) {
	      case ACTIVITY_CHOOSE_FILE: {
	        if (resultCode == RESULT_OK){
	          Uri uri = data.getData();
	          String filePath = uri.getPath();
	          System.out.println(filePath);
	          Sender a = new Sender();
//				a.execute("/sdcard/Download/04-moonlight-nocturne.mp3");
	          a.execute(filePath, etName.getText().toString());
	        }
	      }
	    }
	  }

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		// Handle action bar item clicks here. The action bar will
		// automatically handle clicks on the Home/Up button, so long
		// as you specify a parent activity in AndroidManifest.xml.
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	
	private boolean isPackageInstalled(String packagename, Context context) {
	    PackageManager pm = context.getPackageManager();
	    try {
	        pm.getPackageInfo(packagename, PackageManager.GET_ACTIVITIES);
	        return true;
	    } catch (NameNotFoundException e) {
	        return false;
	    }
	}
}

package com.example.composecounterapp

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.modifier.ModifierLocalReadScope
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.composecounterapp.ui.theme.ComposeCounterAppTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            ComposeCounterAppTheme {
                Surface(modifier = Modifier.fillMaxSize()) {
                    CounterApp()
                }
            }
        }
    }
}

@Composable
fun CounterApp() {
    Column(modifier = Modifier.fillMaxSize(),
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
        ){
        var count by remember { mutableIntStateOf(0) }

        Text(count.toString() , fontSize = 40.sp)

        Spacer(modifier = Modifier.height(8.dp))

        Row {
            Button(onClick = { count += 1 }) {
                Text(text = "+")

            }
            Spacer(modifier = Modifier.width(8.dp))
            Button(onClick = { count -= 1}) {
                Text(text = "-")

            }
            Spacer(modifier = Modifier.width(8.dp))
            Button(onClick = { count = 0 }) {
                Text(text = "RESET")

            }
        }
    }
}

@Preview
@Composable
fun PreviewCounterApp(){
    CounterApp()
}
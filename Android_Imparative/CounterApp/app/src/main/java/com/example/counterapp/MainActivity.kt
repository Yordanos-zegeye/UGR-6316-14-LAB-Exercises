package com.example.counterapp

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import com.example.counterapp.ui.theme.CounterAppTheme

class MainActivity : ComponentActivity() {
    private lateinit var counterTextView: TextView
    private var count = 0

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        counterTextView = findViewById(R.id.counterTextView)
        updateCounterText()

        val incrementButton: Button = findViewById(R.id.incrementButton)
        incrementButton.setOnClickListener {
            count++
            updateCounterText()
        }

        val decrementButton: Button = findViewById(R.id.decrementButton)
        decrementButton.setOnClickListener {
            count--
            updateCounterText()
        }

        val resetButton: Button = findViewById(R.id.resetButton)
        resetButton.setOnClickListener {
            count = 0
            updateCounterText()
        }
    }

    private fun updateCounterText() {
        counterTextView.text = count.toString()
    }

}


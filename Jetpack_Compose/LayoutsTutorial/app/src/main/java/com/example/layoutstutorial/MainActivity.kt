package com.example.layoutstutorial

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.modifier.modifierLocalConsumer
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.layoutstutorial.ui.theme.LayoutsTutorialTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle? ){
        super.onCreate(savedInstanceState)
        setContent {
            MessageCard(Message("Android" , "Jetpack Compose"))
        }
    }
}

data class Message(val author: String , val body: String)

@Composable
fun MessageCard(msg: Message) {
    Row(modifier = Modifier.padding(all = 8.dp)) {
        Image(painter = painterResource(R.drawable.pic) ,
            contentDescription = "Contact profile picture",
            modifier = Modifier
                .size(40.dp)
                .clip((CircleShape))
            )
        Spacer(modifier = Modifier.width(8.dp))

        Column {
            Text(msg.author)
            Spacer(modifier = Modifier.height(4.dp))

            Text(msg.body)
        }
    }
}


@Preview
@Composable

fun PreviewMessageCard() {
    MessageCard(Message("Yordanos" , "Hey look Jetpack compose is great"))
}


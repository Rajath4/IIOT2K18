import 'package:flutter/material.dart';

class SocialMediaLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
            child: Card(
      child: Row(children: <Widget>[
        InkWell(
          // this is the one you are looking for..........
          //onTap: ,
          child: new Container(
            //width: 50.0,
            //height: 50.0,
            padding: const EdgeInsets.all(20.0),
            //I used some padding without fixed width and height
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              // You can use like this way or like the below line
              //borderRadius: new BorderRadius.circular(30.0),
              color: Colors.green,
            ),
            child: Image.network(
                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHYAAAB2CAMAAAAqeZcjAAAAn1BMVEUNPnj///8ALGAANHPx8vQAKV4rPWmQmLIALnAGPHcAMHEAH1kAHGl+jKrh4ucALG+LjqQACVQAOHUAAEw3Q20AJFwAJ21Ua5T1+PqqscQ2WIgAD1TY3eXAx9SPnbYkTYJxgqQ4UoMAFVVfbZRhaYgAGlhNYY1/i6OwtcPQ09wAIWsAAFFSXIFEUXdweZZncY4WNWeUnrAAFWYAAEZ9gZrjqXdcAAAE5ElEQVRogcXbaXuiOhQA4MhiWQYZ6YggoEBrp2oXO7f//7ddQFGWJJwTMsP52j6+TxaynpAZMoI4CR+c9WZHitht1ulDmMQB9lcI5p/jMN25rmGpnmmSKkzTUy3DdXdpGP8VVkscUzXU2muHWf0pTTS5bJCkhEU2aZImsPqGsItt5qpc8karbrZdSGHj1DNA5lU2vHS4mYfYOPVVuHkJ1R+E+azm4NEL7PB7F5cNVUsELcNSQ0E23viiaBn+hlPTbHZ79MaohHjHLZrVMnccWoabsVqYwSbGyKJewjMSDLv1EV8qL0yfXtFUNsX0pWIycP3jj2Y0Pzo/BbLaE7xZTdXP1k74Gi+a8b1qVJb7RGngPqutDbBqEedA+dGftqIo55o21v1/6bHaC3iI8LwtvadW7F22Xnr/1mW1NVhVM9Z4ULNllLLVK2+XfQLXsLdhDrtNVtGLQhtPfDYF9yaTsOfVFlvFvtOf2+wW/uUcGQMBnVWWv9lsAle9NVulscrylcVqiFUEr7BUVo+ajdJkM/g4bO44KpVVVnM6u0XMOaqDZpW80bx3Nj7CVeLy6pjBKqcDhd1gpro/3FUpg9Xv1XxjQ9SsY/BUFqtEX11WQ60QzRchVrn15pp1UGtErzvYFXH4+ni+xi+dwdofbTbGLRK93twdvD3aqzpYajFoxC02xa3C1YdevUZMqlXc5yaLLGyfDd7ZJWzF9SMiIoXts9ocyNqfd3aBXZ2Ks8oqvrFb+OppNHsZIks2yLCr4hGsPteubILed4xglSi5stgONY6tvqGC1Qh65zGG1XWtYhNshxrHKnlSsfg6HseWn27B8o+bGmGqdfg9dnla3oM1AV1r2S7ZGHbkRBuIWcGc+C6xPxRsCG1a/vqpGd98Ng8LFty0cPZ9NdS4ZLaDNi2C5fcv/TwjgSufHZp7o4DE4JERzAb/DbEHAh8swGz8OMDmrySEb6Oh7OE0wO5D8gAeo8BsmA+w9jdJwSsLMPtzP8CuPsgaPP2A2d/80aL4gt7JRj77zB8tijiTHVSVy8IDygbn4UkQwXpOoNXRu3bR7rFQpLKEZHXsvrrqr3vMB+sYyZp1WP3VxUq/xbCqILpUI0YtapSyS8E/IKksfLiQxxbDBXxwlMcWgyN8KpDHFlMBfOKTxxYTn8CeYDRbTPPwRY08tljUwJdwEtkAsWCVxpYLVpGd10i2Wp6DNyPS2GozAt56SWOrrRd8oymJvWw0p9pWT3SIMNGRyUQHRFMdh010+DfRUedUB7sTHWOPP7QHs61D+9FXFFC2fUWBLa4w27mQQV4/ibLd6yfkZZso27tsw10tCrL9q8XZDDNUibG0i1TUtbEYS702xlySC7H0S3JMSoAIy0oJQCRACLDsBAh4uocAy073gCe34NmIk9wCTuVBs/ln+//FEpew7P6tc5AllqaFZO33oTQtWFIaju2rgil4KHbfVwUTDj1n0Y4Dm83fQAmHM0h6pfrjz+mxGUw1+qRlo49KJj1zutEl9E4yGp8Fp86aJlddRa/035eQKMyW8zkrv0lSWvSZcnStn+gVzGdncYZaTnYbOpof2L8tNeW9Ud121D1gh7MiCf5Voe3lB/8txV94zmBa+fO45wwXeILHG2VM8lSljEke5lShJek/f4Z0jQkeXdVRPTFLxz4x+x86mXuykNGxMAAAAABJRU5ErkJggg=="),
          ),
        ),
      ]),
    )));
  }
}

import 'package:flutter/material.dart';

conditionalProperty(condition, trueProp, falseProp) {
  return condition ? trueProp : falseProp;
}

bool isMobile(context) {
  return MediaQuery.of(context).size.width <
      MediaQuery.of(context).size.height * .82;
}

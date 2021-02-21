import 'package:flutter/material.dart';
import 'package:iron_mom/model/learn_iron.dart';

List<LearningIronModel> getlearning() {
  List<LearningIronModel> learnings = new List<LearningIronModel>();
  LearningIronModel learning = new LearningIronModel();

  learning = new LearningIronModel();
  learning.imgUrl =
      'https://images.unsplash.com/photo-1531983412531-1f49a365ffed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  learning.heading = 'Why you can\'t eat your way out of Iron Deficiency';
  learnings.add(learning);

  learning = new LearningIronModel();
  learning.imgUrl =
      'https://images.unsplash.com/photo-1514395452474-1bf16ebee370?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG1vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  learning.heading = 'Iron Deficiency vs Iron Deficiency Anemia';
  learnings.add(learning);

  learning = new LearningIronModel();
  learning.imgUrl =
      'https://images.unsplash.com/photo-1575676515211-a2977fb6a383?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHByZWduYW50JTIwd29tZW4lMjB3aXRoJTIwYmFieXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  learning.heading = 'Why you can\'t eat your way out of Iron Deficiency';
  learnings.add(learning);

  learning = new LearningIronModel();
  learning.imgUrl =
      'https://images.unsplash.com/photo-1519032020778-4233b1889808?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fG1vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  learning.heading = 'Why you can\'t eat your way out of Iron Deficiency';
  learnings.add(learning);

  return learnings;
}

import 'package:flutter/material.dart';
import 'package:iron_mom/model/learn_iron.dart';

List<LearningIronModel> getIronDeficiency() {
  List<LearningIronModel> deficiencies = new List<LearningIronModel>();
  LearningIronModel defic = new LearningIronModel();

  defic = new LearningIronModel();
  defic.imgUrl =
      'https://images.unsplash.com/photo-1531983412531-1f49a365ffed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  defic.heading = 'Symptoms';
  deficiencies.add(defic);

  defic = new LearningIronModel();
  defic.imgUrl =
      'https://images.unsplash.com/photo-1531983412531-1f49a365ffed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  defic.heading = 'Risks to Mother';
  deficiencies.add(defic);

  defic = new LearningIronModel();
  defic.imgUrl =
      'https://images.unsplash.com/photo-1531983412531-1f49a365ffed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  defic.heading = 'Risks to baby';
  deficiencies.add(defic);

  defic = new LearningIronModel();
  defic.imgUrl =
      'https://images.unsplash.com/photo-1531983412531-1f49a365ffed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vbXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
  defic.heading = 'Symptoms';
  deficiencies.add(defic);

  return deficiencies;
}

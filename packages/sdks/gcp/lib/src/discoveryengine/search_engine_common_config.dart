// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchEngineCommonConfig {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd
  final pulumi.Input<String>? companyName;

  /// Creates a new [SearchEngineCommonConfig].
  /// [companyName] The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd
  SearchEngineCommonConfig({
    this.companyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyName': ?companyName,
    };
  }

  factory SearchEngineCommonConfig.fromMap(Map<String, dynamic> map) {
    return SearchEngineCommonConfig(
      companyName: map['companyName'] == null ? null : (map['companyName']! as String).input(),
    );
  }
}


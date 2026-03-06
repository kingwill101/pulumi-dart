// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasePropertyApexDetail {
  /// The Oracle APEX Application Development version.
  final pulumi.Input<String> apexVersion;
  /// The Oracle REST Data Services (ORDS) version.
  final pulumi.Input<String> ordsVersion;

  /// Creates a new [GetAutonomousDatabasePropertyApexDetail].
  /// [apexVersion] The Oracle APEX Application Development version.
  /// [ordsVersion] The Oracle REST Data Services (ORDS) version.
  const GetAutonomousDatabasePropertyApexDetail({
    required this.apexVersion,
    required this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexVersion': apexVersion,
      'ordsVersion': ordsVersion,
    };
  }

  factory GetAutonomousDatabasePropertyApexDetail.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyApexDetail(
      apexVersion: pulumi.Input.fromValue(map['apexVersion'] as String),
      ordsVersion: pulumi.Input.fromValue(map['ordsVersion'] as String),
    );
  }
}


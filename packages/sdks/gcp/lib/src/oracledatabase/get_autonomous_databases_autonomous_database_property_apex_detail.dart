// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail {
  /// The Oracle APEX Application Development version.
  final pulumi.Input<String> apexVersion;
  /// The Oracle REST Data Services (ORDS) version.
  final pulumi.Input<String> ordsVersion;

  /// Creates a new [GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail].
  /// [apexVersion] The Oracle APEX Application Development version.
  /// [ordsVersion] The Oracle REST Data Services (ORDS) version.
  const GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail({
    required this.apexVersion,
    required this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexVersion': apexVersion,
      'ordsVersion': ordsVersion,
    };
  }

  factory GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabasesAutonomousDatabasePropertyApexDetail(
      apexVersion: pulumi.Input.fromValue(map['apexVersion'] as String),
      ordsVersion: pulumi.Input.fromValue(map['ordsVersion'] as String),
    );
  }
}


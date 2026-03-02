// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabasePropertiesApexDetail {
  /// The Oracle APEX Application Development version.
  final pulumi.Input<String>? apexVersion;
  /// The Oracle REST Data Services (ORDS) version.
  final pulumi.Input<String>? ordsVersion;

  /// Creates a new [AutonomousDatabasePropertiesApexDetail].
  /// [apexVersion] The Oracle APEX Application Development version.
  /// [ordsVersion] The Oracle REST Data Services (ORDS) version.
  AutonomousDatabasePropertiesApexDetail({
    this.apexVersion,
    this.ordsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apexVersion': ?apexVersion,
      'ordsVersion': ?ordsVersion,
    };
  }

  factory AutonomousDatabasePropertiesApexDetail.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabasePropertiesApexDetail(
      apexVersion: map['apexVersion'] == null ? null : (map['apexVersion']! as String).input(),
      ordsVersion: map['ordsVersion'] == null ? null : (map['ordsVersion']! as String).input(),
    );
  }
}


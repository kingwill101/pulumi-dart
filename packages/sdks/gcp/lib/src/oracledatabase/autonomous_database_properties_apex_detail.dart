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
      apexVersion: (() { final guardedValue = map['apexVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ordsVersion: (() { final guardedValue = map['ordsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


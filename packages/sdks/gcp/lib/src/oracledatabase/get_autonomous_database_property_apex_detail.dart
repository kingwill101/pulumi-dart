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
  GetAutonomousDatabasePropertyApexDetail({
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
      apexVersion: (map['apexVersion'] as String).input(),
      ordsVersion: (map['ordsVersion'] as String).input(),
    );
  }
}


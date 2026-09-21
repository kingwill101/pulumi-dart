// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustResourceLibraryApplication resources.
class ZeroTrustResourceLibraryApplicationState {
  final pulumi.Input<String?>? accountId;
  /// Confidence score for the application. Returns -1 when no score is available.
  final pulumi.Input<double?>? applicationConfidenceScore;
  /// Returns the score composition breakdown for the application.
  final pulumi.Input<String?>? applicationScoreComposition;
  /// Returns the application source.
  final pulumi.Input<String?>? applicationSource;
  /// Returns the application type.
  final pulumi.Input<String?>? applicationType;
  /// Returns the application type description.
  final pulumi.Input<String?>? applicationTypeDescription;
  /// Returns the category ID.
  final pulumi.Input<int?>? categoryId;
  /// Returns the application creation time.
  final pulumi.Input<String?>? createdAt;
  /// GenAI score for the application. Returns -1 when no score is available.
  final pulumi.Input<double?>? genAiScore;
  /// Hostnames matched by the application.
  final pulumi.Input<List<String>?>? hostnames;
  /// Returns the human readable ID.
  final pulumi.Input<String?>? humanId;
  /// IP subnets matched by the application.
  final pulumi.Input<List<String>?>? ipSubnets;
  /// Returns the application name.
  final pulumi.Input<String?>? name;
  /// Port and protocol pairs matched by the application.
  final pulumi.Input<List<String>?>? portProtocols;
  /// Support domains matched by the application.
  final pulumi.Input<List<String>?>? supportDomains;
  /// Cloudflare products that support this application.
  final pulumi.Input<List<String>?>? supporteds;
  /// Returns the application update time.
  final pulumi.Input<String?>? updatedAt;
  /// Returns the application version.
  final pulumi.Input<String?>? version;

  /// Creates a new [ZeroTrustResourceLibraryApplicationState].
  /// [accountId] Optional.
  /// [applicationConfidenceScore] Confidence score for the application. Returns -1 when no score is available.
  /// [applicationScoreComposition] Returns the score composition breakdown for the application.
  /// [applicationSource] Returns the application source.
  /// [applicationType] Returns the application type.
  /// [applicationTypeDescription] Returns the application type description.
  /// [categoryId] Returns the category ID.
  /// [createdAt] Returns the application creation time.
  /// [genAiScore] GenAI score for the application. Returns -1 when no score is available.
  /// [hostnames] Hostnames matched by the application.
  /// [humanId] Returns the human readable ID.
  /// [ipSubnets] IP subnets matched by the application.
  /// [name] Returns the application name.
  /// [portProtocols] Port and protocol pairs matched by the application.
  /// [supportDomains] Support domains matched by the application.
  /// [supporteds] Cloudflare products that support this application.
  /// [updatedAt] Returns the application update time.
  /// [version] Returns the application version.
  const ZeroTrustResourceLibraryApplicationState({
    this.accountId,
    this.applicationConfidenceScore,
    this.applicationScoreComposition,
    this.applicationSource,
    this.applicationType,
    this.applicationTypeDescription,
    this.categoryId,
    this.createdAt,
    this.genAiScore,
    this.hostnames,
    this.humanId,
    this.ipSubnets,
    this.name,
    this.portProtocols,
    this.supportDomains,
    this.supporteds,
    this.updatedAt,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'applicationConfidenceScore': ?applicationConfidenceScore,
      'applicationScoreComposition': ?applicationScoreComposition,
      'applicationSource': ?applicationSource,
      'applicationType': ?applicationType,
      'applicationTypeDescription': ?applicationTypeDescription,
      'categoryId': ?categoryId,
      'createdAt': ?createdAt,
      'genAiScore': ?genAiScore,
      'hostnames': ?hostnames,
      'humanId': ?humanId,
      'ipSubnets': ?ipSubnets,
      'name': ?name,
      'portProtocols': ?portProtocols,
      'supportDomains': ?supportDomains,
      'supporteds': ?supporteds,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory ZeroTrustResourceLibraryApplicationState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustResourceLibraryApplicationState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationConfidenceScore: (() { final guardedValue = map['applicationConfidenceScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      applicationScoreComposition: (() { final guardedValue = map['applicationScoreComposition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationSource: (() { final guardedValue = map['applicationSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationTypeDescription: (() { final guardedValue = map['applicationTypeDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      genAiScore: (() { final guardedValue = map['genAiScore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      humanId: (() { final guardedValue = map['humanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipSubnets: (() { final guardedValue = map['ipSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      portProtocols: (() { final guardedValue = map['portProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportDomains: (() { final guardedValue = map['supportDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supporteds: (() { final guardedValue = map['supporteds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

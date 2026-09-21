// ignore_for_file: unused_element, unnecessary_cast

import 'get_zero_trust_resource_library_application_filter.dart';

/// Result data returned by getZeroTrustResourceLibraryApplication.
class GetZeroTrustResourceLibraryApplicationResult {
  final String? accountId;
  /// Confidence score for the application. Returns -1 when no score is available.
  final double? applicationConfidenceScore;
  /// Returns the score composition breakdown for the application.
  final String? applicationScoreComposition;
  /// Returns the application source.
  final String? applicationSource;
  /// Returns the application type.
  final String? applicationType;
  /// Returns the application type description.
  final String? applicationTypeDescription;
  /// Returns the category ID.
  final int? categoryId;
  /// Returns the application creation time.
  final String? createdAt;
  final GetZeroTrustResourceLibraryApplicationFilter? filter;
  /// GenAI score for the application. Returns -1 when no score is available.
  final double? genAiScore;
  /// Hostnames matched by the application.
  final List<String>? hostnames;
  /// Returns the human readable ID.
  final String? humanId;
  /// Returns the application ID.
  final int? id;
  /// IP subnets matched by the application.
  final List<String>? ipSubnets;
  /// Returns the application name.
  final String? name;
  /// Port and protocol pairs matched by the application.
  final List<String>? portProtocols;
  /// Support domains matched by the application.
  final List<String>? supportDomains;
  /// Cloudflare products that support this application.
  final List<String>? supporteds;
  /// Returns the application update time.
  final String? updatedAt;
  /// Returns the application version.
  final String? version;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationResult].
  /// [accountId] Optional.
  /// [applicationConfidenceScore] Confidence score for the application. Returns -1 when no score is available.
  /// [applicationScoreComposition] Returns the score composition breakdown for the application.
  /// [applicationSource] Returns the application source.
  /// [applicationType] Returns the application type.
  /// [applicationTypeDescription] Returns the application type description.
  /// [categoryId] Returns the category ID.
  /// [createdAt] Returns the application creation time.
  /// [filter] Optional.
  /// [genAiScore] GenAI score for the application. Returns -1 when no score is available.
  /// [hostnames] Hostnames matched by the application.
  /// [humanId] Returns the human readable ID.
  /// [id] Returns the application ID.
  /// [ipSubnets] IP subnets matched by the application.
  /// [name] Returns the application name.
  /// [portProtocols] Port and protocol pairs matched by the application.
  /// [supportDomains] Support domains matched by the application.
  /// [supporteds] Cloudflare products that support this application.
  /// [updatedAt] Returns the application update time.
  /// [version] Returns the application version.
  const GetZeroTrustResourceLibraryApplicationResult({
    this.accountId,
    this.applicationConfidenceScore,
    this.applicationScoreComposition,
    this.applicationSource,
    this.applicationType,
    this.applicationTypeDescription,
    this.categoryId,
    this.createdAt,
    this.filter,
    this.genAiScore,
    this.hostnames,
    this.humanId,
    this.id,
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
      'filter': ?filter?.toMap(),
      'genAiScore': ?genAiScore,
      'hostnames': ?hostnames,
      'humanId': ?humanId,
      'id': ?id,
      'ipSubnets': ?ipSubnets,
      'name': ?name,
      'portProtocols': ?portProtocols,
      'supportDomains': ?supportDomains,
      'supporteds': ?supporteds,
      'updatedAt': ?updatedAt,
      'version': ?version,
    };
  }

  factory GetZeroTrustResourceLibraryApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryApplicationResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationConfidenceScore: (() { final guardedValue = map['applicationConfidenceScore']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      applicationScoreComposition: (() { final guardedValue = map['applicationScoreComposition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationSource: (() { final guardedValue = map['applicationSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationType: (() { final guardedValue = map['applicationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applicationTypeDescription: (() { final guardedValue = map['applicationTypeDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZeroTrustResourceLibraryApplicationFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      genAiScore: (() { final guardedValue = map['genAiScore']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      humanId: (() { final guardedValue = map['humanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      ipSubnets: (() { final guardedValue = map['ipSubnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portProtocols: (() { final guardedValue = map['portProtocols']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supportDomains: (() { final guardedValue = map['supportDomains']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      supporteds: (() { final guardedValue = map['supporteds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

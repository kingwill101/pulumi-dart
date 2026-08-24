// ignore_for_file: unused_element, unnecessary_cast


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
  /// Returns the application creation time.
  final String? createdAt;
  /// GenAI score for the application. Returns -1 when no score is available.
  final double? genAiScore;
  /// Returns the list of hostnames for the application.
  final List<String>? hostnames;
  /// Returns the human readable ID.
  final String? humanId;
  /// The ID of this resource.
  final String? id;
  /// Returns the Intel API ID for the application.
  final int? intelId;
  /// Returns the list of IP subnets for the application.
  final List<String>? ipSubnets;
  /// Returns the application name.
  final String? name;
  /// Returns the list of port protocols for the application.
  final List<String>? portProtocols;
  /// Returns the list of support domains for the application.
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
  /// [createdAt] Returns the application creation time.
  /// [genAiScore] GenAI score for the application. Returns -1 when no score is available.
  /// [hostnames] Returns the list of hostnames for the application.
  /// [humanId] Returns the human readable ID.
  /// [id] The ID of this resource.
  /// [intelId] Returns the Intel API ID for the application.
  /// [ipSubnets] Returns the list of IP subnets for the application.
  /// [name] Returns the application name.
  /// [portProtocols] Returns the list of port protocols for the application.
  /// [supportDomains] Returns the list of support domains for the application.
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
    this.createdAt,
    this.genAiScore,
    this.hostnames,
    this.humanId,
    this.id,
    this.intelId,
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
      'createdAt': ?createdAt,
      'genAiScore': ?genAiScore,
      'hostnames': ?hostnames,
      'humanId': ?humanId,
      'id': ?id,
      'intelId': ?intelId,
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
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      genAiScore: (() { final guardedValue = map['genAiScore']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      humanId: (() { final guardedValue = map['humanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      intelId: (() { final guardedValue = map['intelId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
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

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustResourceLibraryApplicationsResult {
  /// Confidence score for the application. Returns -1 when no score is available.
  final pulumi.Input<double> applicationConfidenceScore;
  /// Returns the score composition breakdown for the application.
  final pulumi.Input<String> applicationScoreComposition;
  /// Returns the application source.
  final pulumi.Input<String> applicationSource;
  /// Returns the application type.
  final pulumi.Input<String> applicationType;
  /// Returns the application type description.
  final pulumi.Input<String> applicationTypeDescription;
  /// Returns the category ID.
  final pulumi.Input<int> categoryId;
  /// Returns the application creation time.
  final pulumi.Input<String> createdAt;
  /// GenAI score for the application. Returns -1 when no score is available.
  final pulumi.Input<double> genAiScore;
  /// Hostnames matched by the application.
  final pulumi.Input<List<String>> hostnames;
  /// Returns the human readable ID.
  final pulumi.Input<String> humanId;
  /// Returns the application ID.
  final pulumi.Input<int> id;
  /// IP subnets matched by the application.
  final pulumi.Input<List<String>> ipSubnets;
  /// Returns the application name.
  final pulumi.Input<String> name;
  /// Port and protocol pairs matched by the application.
  final pulumi.Input<List<String>> portProtocols;
  /// Support domains matched by the application.
  final pulumi.Input<List<String>> supportDomains;
  /// Cloudflare products that support this application.
  final pulumi.Input<List<String>> supporteds;
  /// Returns the application update time.
  final pulumi.Input<String> updatedAt;
  /// Returns the application version.
  final pulumi.Input<String> version;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationsResult].
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
  /// [id] Returns the application ID.
  /// [ipSubnets] IP subnets matched by the application.
  /// [name] Returns the application name.
  /// [portProtocols] Port and protocol pairs matched by the application.
  /// [supportDomains] Support domains matched by the application.
  /// [supporteds] Cloudflare products that support this application.
  /// [updatedAt] Returns the application update time.
  /// [version] Returns the application version.
  const GetZeroTrustResourceLibraryApplicationsResult({
    required this.applicationConfidenceScore,
    required this.applicationScoreComposition,
    required this.applicationSource,
    required this.applicationType,
    required this.applicationTypeDescription,
    required this.categoryId,
    required this.createdAt,
    required this.genAiScore,
    required this.hostnames,
    required this.humanId,
    required this.id,
    required this.ipSubnets,
    required this.name,
    required this.portProtocols,
    required this.supportDomains,
    required this.supporteds,
    required this.updatedAt,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConfidenceScore': applicationConfidenceScore,
      'applicationScoreComposition': applicationScoreComposition,
      'applicationSource': applicationSource,
      'applicationType': applicationType,
      'applicationTypeDescription': applicationTypeDescription,
      'categoryId': categoryId,
      'createdAt': createdAt,
      'genAiScore': genAiScore,
      'hostnames': hostnames,
      'humanId': humanId,
      'id': id,
      'ipSubnets': ipSubnets,
      'name': name,
      'portProtocols': portProtocols,
      'supportDomains': supportDomains,
      'supporteds': supporteds,
      'updatedAt': updatedAt,
      'version': version,
    };
  }

  factory GetZeroTrustResourceLibraryApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryApplicationsResult(
      applicationConfidenceScore: pulumi.Input.fromValue((map['applicationConfidenceScore'] as num).toDouble()),
      applicationScoreComposition: pulumi.Input.fromValue(map['applicationScoreComposition'] as String),
      applicationSource: pulumi.Input.fromValue(map['applicationSource'] as String),
      applicationType: pulumi.Input.fromValue(map['applicationType'] as String),
      applicationTypeDescription: pulumi.Input.fromValue(map['applicationTypeDescription'] as String),
      categoryId: pulumi.Input.fromValue((map['categoryId'] as num).toInt()),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      genAiScore: pulumi.Input.fromValue((map['genAiScore'] as num).toDouble()),
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
      humanId: pulumi.Input.fromValue(map['humanId'] as String),
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
      ipSubnets: pulumi.Input.fromValue((map['ipSubnets'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      portProtocols: pulumi.Input.fromValue((map['portProtocols'] as List).cast<String>()),
      supportDomains: pulumi.Input.fromValue((map['supportDomains'] as List).cast<String>()),
      supporteds: pulumi.Input.fromValue((map['supporteds'] as List).cast<String>()),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

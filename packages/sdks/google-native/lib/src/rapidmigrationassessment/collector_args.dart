// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rapidmigrationassessment_v1_collector_args_doc}
/// The set of arguments for Collector.
/// {@endtemplate}
/// {@macro pulumi_rapidmigrationassessment_v1_collector_args_doc}
class CollectorArgs {
  /// How many days to collect data.
  final pulumi.Input<int>? collectionDays;
  /// Required. Id of the requesting object.
  final pulumi.Input<String> collectorId;
  /// User specified description of the Collector.
  final pulumi.Input<String>? description;
  /// User specified name of the Collector.
  final pulumi.Input<String>? displayName;
  /// Uri for EULA (End User License Agreement) from customer.
  final pulumi.Input<String>? eulaUri;
  /// User specified expected asset count.
  final pulumi.Input<String>? expectedAssetCount;
  /// Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// name of resource.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests.
  final pulumi.Input<String>? requestId;
  /// Service Account email used to ingest data to this Collector.
  final pulumi.Input<String>? serviceAccount;

  /// Creates a new [CollectorArgs].
  /// [collectionDays] How many days to collect data.
  /// [collectorId] Required. Id of the requesting object.
  /// [description] User specified description of the Collector.
  /// [displayName] User specified name of the Collector.
  /// [eulaUri] Uri for EULA (End User License Agreement) from customer.
  /// [expectedAssetCount] User specified expected asset count.
  /// [labels] Labels as key value pairs.
  /// [location] Optional.
  /// [name] name of resource.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests.
  /// [serviceAccount] Service Account email used to ingest data to this Collector.
  const CollectorArgs({
    this.collectionDays,
    required this.collectorId,
    this.description,
    this.displayName,
    this.eulaUri,
    this.expectedAssetCount,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionDays': ?collectionDays,
      'collectorId': collectorId,
      'description': ?description,
      'displayName': ?displayName,
      'eulaUri': ?eulaUri,
      'expectedAssetCount': ?expectedAssetCount,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory CollectorArgs.fromMap(Map<String, dynamic> map) {
    return CollectorArgs(
      collectionDays: (() { final guardedValue = map['collectionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      collectorId: pulumi.Input.fromValue(map['collectorId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eulaUri: (() { final guardedValue = map['eulaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedAssetCount: (() { final guardedValue = map['expectedAssetCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

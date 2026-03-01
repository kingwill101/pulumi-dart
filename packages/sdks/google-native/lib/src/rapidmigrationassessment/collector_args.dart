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
  CollectorArgs({
    pulumi.Output<int>? collectionDays,
    required pulumi.Output<String> collectorId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? eulaUri,
    pulumi.Output<String>? expectedAssetCount,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    pulumi.Output<String>? serviceAccount,
  }) :
      collectionDays = pulumi.Input.asOptionalInput<int>(collectionDays),
      collectorId = pulumi.Input.asInput<String>(collectorId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      eulaUri = pulumi.Input.asOptionalInput<String>(eulaUri),
      expectedAssetCount = pulumi.Input.asOptionalInput<String>(expectedAssetCount),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount);

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
      collectionDays: map['collectionDays'] == null ? null : pulumi.Output.create<int>(map['collectionDays'] as int),
      collectorId: pulumi.Output.create<String>(map['collectorId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      eulaUri: map['eulaUri'] == null ? null : pulumi.Output.create<String>(map['eulaUri'] as String),
      expectedAssetCount: map['expectedAssetCount'] == null ? null : pulumi.Output.create<String>(map['expectedAssetCount'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
    );
  }
}


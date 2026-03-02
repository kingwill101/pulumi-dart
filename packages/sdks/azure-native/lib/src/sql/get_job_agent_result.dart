// ignore_for_file: unused_element, unnecessary_cast

import 'job_agent_identity_response.dart';
import 'sku_response.dart';

/// Result data returned by getJobAgent.
class GetJobAgentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID of the database to store job metadata in.
  final String databaseId;
  /// Resource ID.
  final String id;
  /// The identity of the job agent.
  final JobAgentIdentityResponse? identity;
  /// Resource location.
  final String location;
  /// Resource name.
  final String name;
  /// The name and tier of the SKU.
  final SkuResponse? sku;
  /// The state of the job agent.
  final String state;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetJobAgentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [databaseId] Resource ID of the database to store job metadata in.
  /// [id] Resource ID.
  /// [identity] The identity of the job agent.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [sku] The name and tier of the SKU.
  /// [state] The state of the job agent.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetJobAgentResult({
    required this.azureApiVersion,
    required this.databaseId,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    this.sku,
    required this.state,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'databaseId': databaseId,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'name': name,
      'sku': ?sku == null ? null : sku!.toMap(),
      'state': state,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetJobAgentResult.fromMap(Map<String, dynamic> map) {
    return GetJobAgentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      databaseId: map['databaseId'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : JobAgentIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}


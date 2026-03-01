// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_user_data_mapping_args_doc}
/// Arguments for getUserDataMapping.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_user_data_mapping_args_doc}
class GetUserDataMappingArgs {
  final pulumi.Input<String> consentStoreId;
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userDataMappingId;

  /// Creates a new [GetUserDataMappingArgs].
  /// [consentStoreId] Required.
  /// [datasetId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userDataMappingId] Required.
  GetUserDataMappingArgs({
    required pulumi.Output<String> consentStoreId,
    required pulumi.Output<String> datasetId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> userDataMappingId,
  }) :
      consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      userDataMappingId = pulumi.Input.asInput<String>(userDataMappingId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consentStoreId': consentStoreId,
      'datasetId': datasetId,
      'location': location,
      'project': ?project,
      'userDataMappingId': userDataMappingId,
    };
  }

  factory GetUserDataMappingArgs.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingArgs(
      consentStoreId: pulumi.Output.create<String>(map['consentStoreId'] as String),
      datasetId: pulumi.Output.create<String>(map['datasetId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      userDataMappingId: pulumi.Output.create<String>(map['userDataMappingId'] as String),
    );
  }
}


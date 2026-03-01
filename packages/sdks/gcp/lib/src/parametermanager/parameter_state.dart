// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_policy_member.dart';

/// Input properties used for looking up and filtering Parameter resources.
class ParameterState {
  /// The time at which the Parameter was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The format type of the parameter resource.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  final pulumi.Input<String>? format;
  /// The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final pulumi.Input<String>? kmsKey;
  /// The labels assigned to this Parameter.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name of the Parameter. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
  final pulumi.Input<String>? name;
  /// This must be unique within the project.
  final pulumi.Input<String>? parameterId;
  /// Policy member strings of a Google Cloud resource.
  /// Structure is documented below.
  final pulumi.Input<List<ParameterPolicyMember>>? policyMembers;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The time at which the Parameter was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ParameterState].
  /// [createTime] The time at which the Parameter was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [format] The format type of the parameter resource.
  /// [kmsKey] The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format
  /// [labels] The labels assigned to this Parameter.
  /// [name] The resource name of the Parameter. Format:
  /// [parameterId] This must be unique within the project.
  /// [policyMembers] Policy member strings of a Google Cloud resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time at which the Parameter was updated.
  ParameterState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? format,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parameterId,
    pulumi.Output<List<ParameterPolicyMember>>? policyMembers,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      format = pulumi.Input.asOptionalInput<String>(format),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameterId = pulumi.Input.asOptionalInput<String>(parameterId),
      policyMembers = pulumi.Input.asOptionalInput<List<ParameterPolicyMember>>(policyMembers),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'format': ?format,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'name': ?name,
      'parameterId': ?parameterId,
      'policyMembers': ?pulumi.Input.mapOptionalInputValue<List<ParameterPolicyMember>, List<Map<String, dynamic>>>(policyMembers, (value) => pulumi.Input.encodeList<ParameterPolicyMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory ParameterState.fromMap(Map<String, dynamic> map) {
    return ParameterState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      format: map['format'] == null ? null : pulumi.Output.create<String>(map['format'] as String),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameterId: map['parameterId'] == null ? null : pulumi.Output.create<String>(map['parameterId'] as String),
      policyMembers: map['policyMembers'] == null ? null : pulumi.Output.create<List<ParameterPolicyMember>>(pulumi.Input.decodeList<ParameterPolicyMember>(map['policyMembers'], (value) => ParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_parameter_policy_member.dart';

/// Input properties used for looking up and filtering RegionalParameter resources.
class RegionalParameterState {
  /// The time at which the regional Parameter was created.
  final pulumi.Input<String>? createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// The format type of the regional parameter.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  final pulumi.Input<String>? format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final pulumi.Input<String>? kmsKey;

  /// The labels assigned to this regional Parameter.
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

  /// The location of the regional parameter. eg us-central1
  final pulumi.Input<String>? location;

  /// The resource name of the regional Parameter. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  final pulumi.Input<String>? name;

  /// This must be unique within the project.
  final pulumi.Input<String>? parameterId;

  /// An object containing a unique resource identity tied to the regional parameter.
  /// Structure is documented below.
  final pulumi.Input<List<RegionalParameterPolicyMember>>? policyMembers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// The time at which the regional Parameter was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [RegionalParameterState].
  /// [createTime] The time at which the regional Parameter was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [format] The format type of the regional parameter.
  /// [kmsKey] The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format
  /// [labels] The labels assigned to this regional Parameter.
  /// [location] The location of the regional parameter. eg us-central1
  /// [name] The resource name of the regional Parameter. Format:
  /// [parameterId] This must be unique within the project.
  /// [policyMembers] An object containing a unique resource identity tied to the regional parameter.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time at which the regional Parameter was updated.
  RegionalParameterState({
    this.createTime,
    this.effectiveLabels,
    this.format,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.parameterId,
    this.policyMembers,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'format': ?format,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parameterId': ?parameterId,
      'policyMembers':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionalParameterPolicyMember>,
            List<Map<String, dynamic>>
          >(
            policyMembers,
            (value) =>
                pulumi.Input.encodeList<
                  RegionalParameterPolicyMember,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory RegionalParameterState.fromMap(Map<String, dynamic> map) {
    return RegionalParameterState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterId: (() {
        final guardedValue = map['parameterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyMembers: (() {
        final guardedValue = map['policyMembers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegionalParameterPolicyMember>(
            guardedValue,
            (value) => RegionalParameterPolicyMember.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

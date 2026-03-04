// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_policy_spec.dart';

/// Similar to PolicySpec but with an extra 'launch' field for launch reference. The PolicySpec here is specific for dry-run/darklaunch.
class GoogleCloudOrgpolicyV2AlternatePolicySpec {
  /// Reference to the launch that will be used while audit logging and to control the launch. Should be set only in the alternate policy.
  final pulumi.Input<String>? launch;

  /// Specify constraint for configurations of Google Cloud resources.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? spec;

  /// Creates a new [GoogleCloudOrgpolicyV2AlternatePolicySpec].
  /// [launch] Reference to the launch that will be used while audit logging and to control the launch. Should be set only in the alternate policy.
  /// [spec] Specify constraint for configurations of Google Cloud resources.
  GoogleCloudOrgpolicyV2AlternatePolicySpec({this.launch, this.spec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'launch': ?launch,
      'spec':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudOrgpolicyV2PolicySpec,
            Map<String, dynamic>
          >(spec, (value) => value.toMap()),
    };
  }

  factory GoogleCloudOrgpolicyV2AlternatePolicySpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudOrgpolicyV2AlternatePolicySpec(
      launch: (() {
        final guardedValue = map['launch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudOrgpolicyV2PolicySpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}

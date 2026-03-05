// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolve_conflicts_on_create.dart';
import 'resolve_conflicts_on_update.dart';

class KubeProxyAddonOptions {
  /// Custom configuration values for the kube-proxy addon. This object must match the schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  final pulumi.Input<Map<String, dynamic>>? configurationValues;
  /// Whether or not to create the `kube-proxy` Addon in the cluster. Defaults to true, unless `autoMode` is enabled.
  final pulumi.Input<bool>? enabled;
  /// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Docs.
  final pulumi.Input<ResolveConflictsOnCreate>? resolveConflictsOnCreate;
  /// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Docs.
  final pulumi.Input<ResolveConflictsOnUpdate>? resolveConflictsOnUpdate;
  /// The version of the EKS add-on. The version must match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  final pulumi.Input<String>? version;

  /// Creates a new [KubeProxyAddonOptions].
  /// [configurationValues] Custom configuration values for the kube-proxy addon. This object must match the schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  /// [enabled] Whether or not to create the `kube-proxy` Addon in the cluster. Defaults to true, unless `autoMode` is enabled.
  /// [resolveConflictsOnCreate] How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Docs.
  /// [resolveConflictsOnUpdate] How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Docs.
  /// [version] The version of the EKS add-on. The version must match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  KubeProxyAddonOptions({
    this.configurationValues,
    this.enabled,
    this.resolveConflictsOnCreate,
    this.resolveConflictsOnUpdate,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationValues': ?configurationValues,
      'enabled': ?enabled,
      'resolveConflictsOnCreate': ?pulumi.Input.mapOptionalInputValue<ResolveConflictsOnCreate, String>(resolveConflictsOnCreate, (value) => value.wireValue),
      'resolveConflictsOnUpdate': ?pulumi.Input.mapOptionalInputValue<ResolveConflictsOnUpdate, String>(resolveConflictsOnUpdate, (value) => value.wireValue),
      'version': ?version,
    };
  }

  factory KubeProxyAddonOptions.fromMap(Map<String, dynamic> map) {
    return KubeProxyAddonOptions(
      configurationValues: (() { final guardedValue = map['configurationValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resolveConflictsOnCreate: (() { final guardedValue = map['resolveConflictsOnCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolveConflictsOnCreate.fromValue(guardedValue as String)); })(),
      resolveConflictsOnUpdate: (() { final guardedValue = map['resolveConflictsOnUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolveConflictsOnUpdate.fromValue(guardedValue as String)); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


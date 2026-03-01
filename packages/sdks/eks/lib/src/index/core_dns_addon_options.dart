// ignore_for_file: unused_element, unnecessary_cast

import 'resolve_conflicts_on_create.dart';
import 'resolve_conflicts_on_update.dart';

class CoreDnsAddonOptions {
  /// Custom configuration values for the coredns addon. This object must match the schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  final Map<String, dynamic>? configurationValues;
  /// Whether or not to create the `coredns` Addon in the cluster
  ///
  /// The managed addon can only be enabled if the cluster is a Fargate cluster or if the cluster
  /// uses the default node group, otherwise the self-managed addon is used.
  final bool? enabled;
  /// How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Docs.
  final ResolveConflictsOnCreate? resolveConflictsOnCreate;
  /// How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Docs.
  final ResolveConflictsOnUpdate? resolveConflictsOnUpdate;
  /// The version of the EKS add-on. The version must match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  final String? version;

  /// Creates a new [CoreDnsAddonOptions].
  /// [configurationValues] Custom configuration values for the coredns addon. This object must match the schema derived from [describe-addon-configuration](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-configuration.html).
  /// [enabled] Whether or not to create the `coredns` Addon in the cluster
  /// [resolveConflictsOnCreate] How to resolve field value conflicts when migrating a self-managed add-on to an Amazon EKS add-on. Valid values are `NONE` and `OVERWRITE`. For more details see the [CreateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_CreateAddon.html) API Docs.
  /// [resolveConflictsOnUpdate] How to resolve field value conflicts for an Amazon EKS add-on if you've changed a value from the Amazon EKS default value. Valid values are `NONE`, `OVERWRITE`, and `PRESERVE`. For more details see the [UpdateAddon](https://docs.aws.amazon.com/eks/latest/APIReference/API_UpdateAddon.html) API Docs.
  /// [version] The version of the EKS add-on. The version must match one of the versions returned by [describe-addon-versions](https://docs.aws.amazon.com/cli/latest/reference/eks/describe-addon-versions.html).
  CoreDnsAddonOptions({
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
      'resolveConflictsOnCreate': ?resolveConflictsOnCreate == null ? null : resolveConflictsOnCreate!.value,
      'resolveConflictsOnUpdate': ?resolveConflictsOnUpdate == null ? null : resolveConflictsOnUpdate!.value,
      'version': ?version,
    };
  }

  factory CoreDnsAddonOptions.fromMap(Map<String, dynamic> map) {
    return CoreDnsAddonOptions(
      configurationValues: map['configurationValues'] == null ? null : (map['configurationValues'] as Map).cast<String, dynamic>(),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      resolveConflictsOnCreate: map['resolveConflictsOnCreate'] == null ? null : ResolveConflictsOnCreate.fromValue(map['resolveConflictsOnCreate'] as String),
      resolveConflictsOnUpdate: map['resolveConflictsOnUpdate'] == null ? null : ResolveConflictsOnUpdate.fromValue(map['resolveConflictsOnUpdate'] as String),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}


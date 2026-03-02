// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_registry_cache_rule_get_registry_cache_rule_args_doc}
/// Arguments for getRegistryCacheRule.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_registry_cache_rule_get_registry_cache_rule_args_doc}
class GetRegistryCacheRuleArgs {
  /// The ID of the container registry where the cache rule should apply. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerRegistryId;
  /// Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [GetRegistryCacheRuleArgs].
  /// [containerRegistryId] The ID of the container registry where the cache rule should apply. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  GetRegistryCacheRuleArgs({
    required this.containerRegistryId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryId': containerRegistryId,
      'name': name,
    };
  }

  factory GetRegistryCacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryCacheRuleArgs(
      containerRegistryId: (map['containerRegistryId'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}


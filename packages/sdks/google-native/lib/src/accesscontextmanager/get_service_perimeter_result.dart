// ignore_for_file: unused_element, unnecessary_cast

import 'service_perimeter_config_response.dart';

/// Result data returned by getServicePerimeter.
class GetServicePerimeterResult {
  /// Description of the `ServicePerimeter` and its use. Does not affect behavior.
  final String? description;
  /// Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  final String? name;
  /// Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
  final String? perimeterType;
  /// Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the "use_explicit_dry_run_spec" flag is set.
  final ServicePerimeterConfigResponse? spec;
  /// Current ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.
  final ServicePerimeterConfigResponse? status;
  /// Human readable title. Must be unique within the Policy.
  final String? title;
  /// Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration ("spec") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config ("status") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use_explicit_dry_run_spec must bet set to True if any of the fields in the spec are set to non-default values.
  final bool? useExplicitDryRunSpec;

  /// Creates a new [GetServicePerimeterResult].
  /// [description] Description of the `ServicePerimeter` and its use. Does not affect behavior.
  /// [name] Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.
  /// [perimeterType] Perimeter type indicator. A single project or VPC network is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.
  /// [spec] Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the "use_explicit_dry_run_spec" flag is set.
  /// [status] Current ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.
  /// [title] Human readable title. Must be unique within the Policy.
  /// [useExplicitDryRunSpec] Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration ("spec") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config ("status") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use_explicit_dry_run_spec must bet set to True if any of the fields in the spec are set to non-default values.
  const GetServicePerimeterResult({
    this.description,
    this.name,
    this.perimeterType,
    this.spec,
    this.status,
    this.title,
    this.useExplicitDryRunSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'perimeterType': ?perimeterType,
      'spec': ?spec?.toMap(),
      'status': ?status?.toMap(),
      'title': ?title,
      'useExplicitDryRunSpec': ?useExplicitDryRunSpec,
    };
  }

  factory GetServicePerimeterResult.fromMap(Map<String, dynamic> map) {
    return GetServicePerimeterResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perimeterType: (() { final guardedValue = map['perimeterType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return ServicePerimeterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ServicePerimeterConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useExplicitDryRunSpec: (() { final guardedValue = map['useExplicitDryRunSpec']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_auth_provider_binding.dart';
import 'binding_source.dart';
import 'binding_target.dart';

/// {@template pulumi_agentregistry_binding_binding_args_doc}
/// The set of arguments for Binding.
/// {@endtemplate}
/// {@macro pulumi_agentregistry_binding_binding_args_doc}
class BindingArgs {
  /// The auth provider of the Binding.
  /// Structure is documented below.
  final pulumi.Input<BindingAuthProviderBinding> authProviderBinding;
  /// The name of the Binding.
  final pulumi.Input<String> bindingId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the Binding.
  final pulumi.Input<String?>? description;
  /// User-defined display name for the Binding.
  final pulumi.Input<String?>? displayName;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The source of the Binding.
  /// Structure is documented below.
  final pulumi.Input<BindingSource> source;
  /// The target of the Binding.
  /// Structure is documented below.
  final pulumi.Input<BindingTarget> target;

  /// Creates a new [BindingArgs].
  /// [authProviderBinding] The auth provider of the Binding.
  /// [bindingId] The name of the Binding.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Binding.
  /// [displayName] User-defined display name for the Binding.
  /// [location] The location of the resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [source] The source of the Binding.
  /// [target] The target of the Binding.
  const BindingArgs({
    required this.authProviderBinding,
    required this.bindingId,
    this.deletionPolicy,
    this.description,
    this.displayName,
    required this.location,
    this.project,
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProviderBinding': pulumi.Input.mapInputValue<BindingAuthProviderBinding, Map<String, dynamic>>(authProviderBinding, (value) => value.toMap()),
      'bindingId': bindingId,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
      'source': pulumi.Input.mapInputValue<BindingSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<BindingTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory BindingArgs.fromMap(Map<String, dynamic> map) {
    return BindingArgs(
      authProviderBinding: pulumi.Input.fromValue(BindingAuthProviderBinding.fromMap((map['authProviderBinding']! as Map).cast<String, dynamic>())),
      bindingId: pulumi.Input.fromValue(map['bindingId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: pulumi.Input.fromValue(BindingSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(BindingTarget.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}

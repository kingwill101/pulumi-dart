// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_auth_provider_binding.dart';
import 'binding_source.dart';
import 'binding_target.dart';

/// Input properties used for looking up and filtering Binding resources.
class BindingState {
  /// The auth provider of the Binding.
  /// Structure is documented below.
  final pulumi.Input<BindingAuthProviderBinding?>? authProviderBinding;
  /// The name of the Binding.
  final pulumi.Input<String?>? bindingId;
  /// The timestamp when the resource was created.
  final pulumi.Input<String?>? createTime;
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
  final pulumi.Input<String?>? location;
  /// The resource name of the Binding.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The source of the Binding.
  /// Structure is documented below.
  final pulumi.Input<BindingSource?>? source;
  /// The target of the Binding.
  /// Structure is documented below.
  final pulumi.Input<BindingTarget?>? target;
  /// The timestamp when the resource was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [BindingState].
  /// [authProviderBinding] The auth provider of the Binding.
  /// [bindingId] The name of the Binding.
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Binding.
  /// [displayName] User-defined display name for the Binding.
  /// [location] The location of the resource.
  /// [name] The resource name of the Binding.
  /// [project] The ID of the project in which the resource belongs.
  /// [source] The source of the Binding.
  /// [target] The target of the Binding.
  /// [updateTime] The timestamp when the resource was updated.
  const BindingState({
    this.authProviderBinding,
    this.bindingId,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.source,
    this.target,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProviderBinding': ?pulumi.Input.mapOptionalInputValue<BindingAuthProviderBinding, Map<String, dynamic>>(authProviderBinding, (value) => value.toMap()),
      'bindingId': ?bindingId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'source': ?pulumi.Input.mapOptionalInputValue<BindingSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<BindingTarget, Map<String, dynamic>>(target, (value) => value.toMap()),
      'updateTime': ?updateTime,
    };
  }

  factory BindingState.fromMap(Map<String, dynamic> map) {
    return BindingState(
      authProviderBinding: (() { final guardedValue = map['authProviderBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BindingAuthProviderBinding.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bindingId: (() { final guardedValue = map['bindingId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BindingSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_attribute.dart';

/// {@template pulumi_apigee_app_group_app_group_args_doc}
/// The set of arguments for AppGroup.
/// {@endtemplate}
/// {@macro pulumi_apigee_app_group_app_group_args_doc}
class AppGroupArgs {
  /// A list of attributes
  /// Structure is documented below.
  final pulumi.Input<List<AppGroupAttribute>>? attributes;
  /// Channel identifier identifies the owner maintaining this grouping.
  final pulumi.Input<String>? channelId;
  /// A reference to the associated storefront/marketplace.
  final pulumi.Input<String>? channelUri;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// App group name displayed in the UI
  final pulumi.Input<String>? displayName;
  /// Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  final pulumi.Input<String>? name;
  /// The Apigee Organization associated with the Apigee app group,
  /// in the format `organizations/{{org_name}}`.
  final pulumi.Input<String> orgId;
  /// Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  /// Possible values are: `active`, `inactive`.
  final pulumi.Input<String>? status;

  /// Creates a new [AppGroupArgs].
  /// [attributes] A list of attributes
  /// [channelId] Channel identifier identifies the owner maintaining this grouping.
  /// [channelUri] A reference to the associated storefront/marketplace.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] App group name displayed in the UI
  /// [name] Name of the AppGroup. Characters you can use in the name are restricted to: A-Z0-9._-$ %.
  /// [orgId] The Apigee Organization associated with the Apigee app group,
  /// [status] Valid values are active or inactive. Note that the status of the AppGroup should be updated via UpdateAppGroupRequest by setting the action as active or inactive.
  const AppGroupArgs({
    this.attributes,
    this.channelId,
    this.channelUri,
    this.deletionPolicy,
    this.displayName,
    this.name,
    required this.orgId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<List<AppGroupAttribute>, List<Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeList<AppGroupAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'channelId': ?channelId,
      'channelUri': ?channelUri,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'orgId': orgId,
      'status': ?status,
    };
  }

  factory AppGroupArgs.fromMap(Map<String, dynamic> map) {
    return AppGroupArgs(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppGroupAttribute>(guardedValue, (value) => AppGroupAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      channelId: (() { final guardedValue = map['channelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelUri: (() { final guardedValue = map['channelUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

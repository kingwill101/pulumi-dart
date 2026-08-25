// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_domain_custom_domain_status.dart';
import 'app_hosting_domain_serve.dart';

/// Input properties used for looking up and filtering AppHostingDomain resources.
class AppHostingDomainState {
  /// The ID of the Backend that this Domain is associated with
  final pulumi.Input<String?>? backend;
  /// Time at which the domain was created.
  final pulumi.Input<String?>? createTime;
  /// The status of a custom domain's linkage to the Backend.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingDomainCustomDomainStatus>?>? customDomainStatuses;
  /// Time at which the domain was deleted.
  final pulumi.Input<String?>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Id of the domain to create.
  /// Must be a valid domain name, such as "foo.com"
  final pulumi.Input<String?>? domainId;
  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  final pulumi.Input<String?>? etag;
  /// The location of the Backend that this Domain is associated with
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the domain, e.g.
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}`
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Time at which a soft-deleted domain will be purged, rendering in
  /// permanently deleted.
  final pulumi.Input<String?>? purgeTime;
  /// The serving behavior of the domain. If specified, the domain will
  /// serve content other than its Backend's live content.
  /// Structure is documented below.
  final pulumi.Input<AppHostingDomainServe?>? serve;
  /// System-assigned, unique identifier.
  final pulumi.Input<String?>? uid;
  /// Time at which the domain was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AppHostingDomainState].
  /// [backend] The ID of the Backend that this Domain is associated with
  /// [createTime] Time at which the domain was created.
  /// [customDomainStatuses] The status of a custom domain's linkage to the Backend.
  /// [deleteTime] Time at which the domain was deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [domainId] Id of the domain to create.
  /// [etag] Server-computed checksum based on other values; may be sent
  /// [location] The location of the Backend that this Domain is associated with
  /// [name] Identifier. The resource name of the domain, e.g.
  /// [project] The ID of the project in which the resource belongs.
  /// [purgeTime] Time at which a soft-deleted domain will be purged, rendering in
  /// [serve] The serving behavior of the domain. If specified, the domain will
  /// [uid] System-assigned, unique identifier.
  /// [updateTime] Time at which the domain was last updated.
  const AppHostingDomainState({
    this.backend,
    this.createTime,
    this.customDomainStatuses,
    this.deleteTime,
    this.deletionPolicy,
    this.domainId,
    this.etag,
    this.location,
    this.name,
    this.project,
    this.purgeTime,
    this.serve,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': ?backend,
      'createTime': ?createTime,
      'customDomainStatuses': ?pulumi.Input.mapOptionalInputValue<List<AppHostingDomainCustomDomainStatus>, List<Map<String, dynamic>>>(customDomainStatuses, (value) => pulumi.Input.encodeList<AppHostingDomainCustomDomainStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'domainId': ?domainId,
      'etag': ?etag,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'purgeTime': ?purgeTime,
      'serve': ?pulumi.Input.mapOptionalInputValue<AppHostingDomainServe, Map<String, dynamic>>(serve, (value) => value.toMap()),
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory AppHostingDomainState.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainState(
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomainStatuses: (() { final guardedValue = map['customDomainStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppHostingDomainCustomDomainStatus>(guardedValue, (value) => AppHostingDomainCustomDomainStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purgeTime: (() { final guardedValue = map['purgeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serve: (() { final guardedValue = map['serve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppHostingDomainServe.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

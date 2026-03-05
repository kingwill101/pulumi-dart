// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_response.dart';
import 'dns_updates_response.dart';
import 'status_response.dart';

/// Result data returned by getCustomDomain.
class GetCustomDomainResult {
  /// Annotations you can add to leave both human- and machine-readable metadata about your `CustomDomain`.
  final Map<String, String> annotations;
  /// The SSL certificate Hosting has for this custom domain's domain name. For new custom domains, this often represents Hosting's intent to create a certificate, rather than an actual cert. Check the `state` field for more.
  final CertificateResponse cert;
  /// A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
  final String certPreference;
  /// The custom domain's create time.
  final String createTime;
  /// The time the `CustomDomain` was deleted; null for custom domains that haven't been deleted. Deleted custom domains persist for approximately 30 days, after which time Hosting removes them completely. To restore a deleted custom domain, make an `UndeleteCustomDomain` request.
  final String deleteTime;
  /// A string that represents the current state of the `CustomDomain` and allows you to confirm its initial state in requests that would modify it. Use the tag to ensure consistency when making `UpdateCustomDomain`, `DeleteCustomDomain`, and `UndeleteCustomDomain` requests.
  final String etag;
  /// The minimum time before a soft-deleted `CustomDomain` is completely removed from Hosting; null for custom domains that haven't been deleted.
  final String expireTime;
  /// The `HostState` of the domain name this `CustomDomain` refers to.
  final String hostState;
  /// A set of errors Hosting systems encountered when trying to establish Hosting's ability to serve secure content for your domain name. Resolve these issues to ensure your `CustomDomain` behaves properly.
  final List<StatusResponse> issues;
  /// Labels used for extra metadata and/or filtering.
  final Map<String, String> labels;
  /// The fully-qualified name of the `CustomDomain`.
  final String name;
  /// The `OwnershipState` of the domain name this `CustomDomain` refers to.
  final String ownershipState;
  /// A field that, if true, indicates that Hosting's systems are attmepting to make the custom domain's state match your preferred state. This is most frequently `true` when initially provisioning a `CustomDomain` after a `CreateCustomDomain` request or when creating a new SSL certificate to match an updated `cert_preference` after an `UpdateCustomDomain` request.
  final bool reconciling;
  /// A domain name that this `CustomDomain` should direct traffic towards. If specified, Hosting will respond to requests against this custom domain with an HTTP 301 code, and route traffic to the specified `redirect_target` instead.
  final String redirectTarget;
  /// A set of updates you should make to the domain name's DNS records to let Hosting serve secure content on its behalf.
  final DnsUpdatesResponse requiredDnsUpdates;
  /// The last time the `CustomDomain` was updated.
  final String updateTime;

  /// Creates a new [GetCustomDomainResult].
  /// [annotations] Annotations you can add to leave both human- and machine-readable metadata about your `CustomDomain`.
  /// [cert] The SSL certificate Hosting has for this custom domain's domain name. For new custom domains, this often represents Hosting's intent to create a certificate, rather than an actual cert. Check the `state` field for more.
  /// [certPreference] A field that lets you specify which SSL certificate type Hosting creates for your domain name. Spark plan custom domains only have access to the `GROUPED` cert type, while Blaze plan domains can select any option.
  /// [createTime] The custom domain's create time.
  /// [deleteTime] The time the `CustomDomain` was deleted; null for custom domains that haven't been deleted. Deleted custom domains persist for approximately 30 days, after which time Hosting removes them completely. To restore a deleted custom domain, make an `UndeleteCustomDomain` request.
  /// [etag] A string that represents the current state of the `CustomDomain` and allows you to confirm its initial state in requests that would modify it. Use the tag to ensure consistency when making `UpdateCustomDomain`, `DeleteCustomDomain`, and `UndeleteCustomDomain` requests.
  /// [expireTime] The minimum time before a soft-deleted `CustomDomain` is completely removed from Hosting; null for custom domains that haven't been deleted.
  /// [hostState] The `HostState` of the domain name this `CustomDomain` refers to.
  /// [issues] A set of errors Hosting systems encountered when trying to establish Hosting's ability to serve secure content for your domain name. Resolve these issues to ensure your `CustomDomain` behaves properly.
  /// [labels] Labels used for extra metadata and/or filtering.
  /// [name] The fully-qualified name of the `CustomDomain`.
  /// [ownershipState] The `OwnershipState` of the domain name this `CustomDomain` refers to.
  /// [reconciling] A field that, if true, indicates that Hosting's systems are attmepting to make the custom domain's state match your preferred state. This is most frequently `true` when initially provisioning a `CustomDomain` after a `CreateCustomDomain` request or when creating a new SSL certificate to match an updated `cert_preference` after an `UpdateCustomDomain` request.
  /// [redirectTarget] A domain name that this `CustomDomain` should direct traffic towards. If specified, Hosting will respond to requests against this custom domain with an HTTP 301 code, and route traffic to the specified `redirect_target` instead.
  /// [requiredDnsUpdates] A set of updates you should make to the domain name's DNS records to let Hosting serve secure content on its behalf.
  /// [updateTime] The last time the `CustomDomain` was updated.
  GetCustomDomainResult({
    required this.annotations,
    required this.cert,
    required this.certPreference,
    required this.createTime,
    required this.deleteTime,
    required this.etag,
    required this.expireTime,
    required this.hostState,
    required this.issues,
    required this.labels,
    required this.name,
    required this.ownershipState,
    required this.reconciling,
    required this.redirectTarget,
    required this.requiredDnsUpdates,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'cert': cert.toMap(),
      'certPreference': certPreference,
      'createTime': createTime,
      'deleteTime': deleteTime,
      'etag': etag,
      'expireTime': expireTime,
      'hostState': hostState,
      'issues': pulumi.Input.encodeList<StatusResponse, Map<String, dynamic>>(issues, (value) => value.toMap()),
      'labels': labels,
      'name': name,
      'ownershipState': ownershipState,
      'reconciling': reconciling,
      'redirectTarget': redirectTarget,
      'requiredDnsUpdates': requiredDnsUpdates.toMap(),
      'updateTime': updateTime,
    };
  }

  factory GetCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      cert: CertificateResponse.fromMap((map['cert']! as Map).cast<String, dynamic>()),
      certPreference: map['certPreference'] as String,
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      etag: map['etag'] as String,
      expireTime: map['expireTime'] as String,
      hostState: map['hostState'] as String,
      issues: pulumi.Input.decodeList<StatusResponse>(map['issues']!, (value) => StatusResponse.fromMap((value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      ownershipState: map['ownershipState'] as String,
      reconciling: map['reconciling'] as bool,
      redirectTarget: map['redirectTarget'] as String,
      requiredDnsUpdates: DnsUpdatesResponse.fromMap((map['requiredDnsUpdates']! as Map).cast<String, dynamic>()),
      updateTime: map['updateTime'] as String,
    );
  }
}


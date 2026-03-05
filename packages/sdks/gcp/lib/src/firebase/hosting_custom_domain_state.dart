// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_custom_domain_cert.dart';
import 'hosting_custom_domain_issue.dart';
import 'hosting_custom_domain_required_dns_update.dart';

/// Input properties used for looking up and filtering HostingCustomDomain resources.
class HostingCustomDomainState {
  /// A field that lets you specify which SSL certificate type Hosting creates
  /// for your domain name. Spark plan `CustomDomain`s only have access to the
  /// `GROUPED` cert type, while Blaze plan can select any option.
  /// Possible values are: `GROUPED`, `PROJECT_GROUPED`, `DEDICATED`.
  final pulumi.Input<String>? certPreference;
  /// The SSL certificate Hosting has for this `CustomDomain`'s domain name.
  /// For new `CustomDomain`s, this often represents Hosting's intent to create
  /// a certificate, rather than an actual cert. Check the `state` field for
  /// more.
  /// Structure is documented below.
  final pulumi.Input<List<HostingCustomDomainCert>>? certs;
  /// The `CustomDomain`'s create time.
  final pulumi.Input<String>? createTime;
  /// The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  final pulumi.Input<String>? customDomain;
  /// The time the `CustomDomain` was deleted; null for `CustomDomains` that
  /// haven't been deleted. Deleted `CustomDomains` persist for approximately 30
  /// days, after which time Hosting removes them completely.
  final pulumi.Input<String>? deleteTime;
  /// A string that represents the current state of the `CustomDomain` and
  /// allows you to confirm its initial state in requests that would modify it.
  final pulumi.Input<String>? etag;
  /// The minimum time before a soft-deleted `CustomDomain` is completely removed
  /// from Hosting; null for `CustomDomains` that haven't been deleted.
  final pulumi.Input<String>? expireTime;
  /// The host state of your domain name. Host state is determined by checking each
  /// IP address associated with your domain name to see if it's serving
  /// Hosting content.
  /// HOST_UNHOSTED:
  /// Your `CustomDomain`'s domain name isn't associated with any IP addresses.
  /// HOST_UNREACHABLE:
  /// Your `CustomDomain`'s domain name can't be reached. Hosting services' DNS
  /// queries to find your domain name's IP addresses resulted in errors. See
  /// your `CustomDomain`'s `issues` field for more details.
  /// HOST_MISMATCH:
  /// Your `CustomDomain`'s domain name has IP addresses that don't ultimately
  /// resolve to Hosting.
  /// HOST_CONFLICT:
  /// Your `CustomDomain`'s domain name has IP addresses that resolve to both
  /// Hosting and other services. To ensure consistent results, remove `A` and
  /// `AAAA` records related to non-Hosting services.
  /// HOST_ACTIVE:
  /// All requests against your `CustomDomain`'s domain name are served by
  /// Hosting. If the `CustomDomain`'s `OwnershipState` is also `ACTIVE`, Hosting
  /// serves your Hosting Site's content on the domain name.
  final pulumi.Input<String>? hostState;
  /// A set of errors Hosting systems encountered when trying to establish
  /// Hosting's ability to serve secure content for your domain name. Resolve
  /// these issues to ensure your `CustomDomain` behaves properly.
  /// Structure is documented below.
  final pulumi.Input<List<HostingCustomDomainIssue>>? issues;
  /// The fully-qualified name of the `CustomDomain`.
  final pulumi.Input<String>? name;
  /// The ownership state of your domain name. Ownership is determined at a
  /// Firebase project level, and established by adding `TXT` records to your
  /// domain name's DNS records.
  /// Ownership cascades to subdomains. Granting a project ownership of `foo.com`
  /// also grants that project ownership over `bar.foo.com`, unless you add
  /// specific `TXT` records to `bar.foo.com` that grant a different project
  /// ownership.
  /// If your `CustomDomain` is in an `OwnershipState` other than
  /// `OWNERSHIP_ACTIVE` for more than 30 days and it hasn't been updated in at
  /// least 30 days, Hosting's ownership systems delete the `CustomDomain`.
  /// OWNERSHIP_MISSING:
  /// Your `CustomDomain`'s domain name has no Hosting-related ownership records;
  /// no Firebase project has permission to act on the domain name's behalf.
  /// OWNERSHIP_UNREACHABLE:
  /// Your `CustomDomain`'s domain name can't be reached. Hosting services' DNS
  /// queries to find your domain name's ownership records resulted in errors.
  /// See your `CustomDomain`'s `issues` field for more details.
  /// OWNERSHIP_MISMATCH:
  /// Your `CustomDomain`'s domain name is owned by another Firebase project.
  /// Remove the conflicting `TXT` records and replace them with project-specific
  /// records for your current Firebase project.
  /// OWNERSHIP_CONFLICT:
  /// Your `CustomDomain`'s domain name has conflicting `TXT` records that
  /// indicate ownership by both your current Firebase project and another
  /// project. Remove the other project's ownership records to grant the current
  /// project ownership.
  /// OWNERSHIP_PENDING:
  /// Your `CustomDomain`'s DNS records are configured correctly. Hosting will
  /// transfer ownership of your domain to this `CustomDomain` within 24 hours.
  /// OWNERSHIP_ACTIVE:
  /// Your `CustomDomain`'s domain name has `TXT` records that grant its project
  /// permission to act on its behalf.
  final pulumi.Input<String>? ownershipState;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// if true, indicates that Hosting's systems are attempting to
  /// make the `CustomDomain`'s state match your preferred state. This is most
  /// frequently `true` when initially provisioning a `CustomDomain` or when creating
  /// a new SSL certificate to match an updated `cert_preference`
  final pulumi.Input<bool>? reconciling;
  /// A domain name that this CustomDomain should direct traffic towards. If
  /// specified, Hosting will respond to requests against this CustomDomain
  /// with an HTTP 301 code, and route traffic to the specified `redirect_target`
  /// instead.
  final pulumi.Input<String>? redirectTarget;
  /// A set of updates you should make to the domain name's DNS records to
  /// let Hosting serve secure content on its behalf.
  /// Structure is documented below.
  final pulumi.Input<List<HostingCustomDomainRequiredDnsUpdate>>? requiredDnsUpdates;
  /// The ID of the site in which to create this custom domain association.
  final pulumi.Input<String>? siteId;
  /// The last time the `CustomDomain` was updated.
  final pulumi.Input<String>? updateTime;
  final pulumi.Input<bool>? waitDnsVerification;

  /// Creates a new [HostingCustomDomainState].
  /// [certPreference] A field that lets you specify which SSL certificate type Hosting creates
  /// [certs] The SSL certificate Hosting has for this `CustomDomain`'s domain name.
  /// [createTime] The `CustomDomain`'s create time.
  /// [customDomain] The ID of the `CustomDomain`, which is the domain name you'd like to use with Firebase Hosting.
  /// [deleteTime] The time the `CustomDomain` was deleted; null for `CustomDomains` that
  /// [etag] A string that represents the current state of the `CustomDomain` and
  /// [expireTime] The minimum time before a soft-deleted `CustomDomain` is completely removed
  /// [hostState] The host state of your domain name. Host state is determined by checking each
  /// [issues] A set of errors Hosting systems encountered when trying to establish
  /// [name] The fully-qualified name of the `CustomDomain`.
  /// [ownershipState] The ownership state of your domain name. Ownership is determined at a
  /// [project] The ID of the project in which the resource belongs.
  /// [reconciling] if true, indicates that Hosting's systems are attempting to
  /// [redirectTarget] A domain name that this CustomDomain should direct traffic towards. If
  /// [requiredDnsUpdates] A set of updates you should make to the domain name's DNS records to
  /// [siteId] The ID of the site in which to create this custom domain association.
  /// [updateTime] The last time the `CustomDomain` was updated.
  /// [waitDnsVerification] Optional.
  HostingCustomDomainState({
    this.certPreference,
    this.certs,
    this.createTime,
    this.customDomain,
    this.deleteTime,
    this.etag,
    this.expireTime,
    this.hostState,
    this.issues,
    this.name,
    this.ownershipState,
    this.project,
    this.reconciling,
    this.redirectTarget,
    this.requiredDnsUpdates,
    this.siteId,
    this.updateTime,
    this.waitDnsVerification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certPreference': ?certPreference,
      'certs': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainCert>, List<Map<String, dynamic>>>(certs, (value) => pulumi.Input.encodeList<HostingCustomDomainCert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'customDomain': ?customDomain,
      'deleteTime': ?deleteTime,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'hostState': ?hostState,
      'issues': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainIssue>, List<Map<String, dynamic>>>(issues, (value) => pulumi.Input.encodeList<HostingCustomDomainIssue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'ownershipState': ?ownershipState,
      'project': ?project,
      'reconciling': ?reconciling,
      'redirectTarget': ?redirectTarget,
      'requiredDnsUpdates': ?pulumi.Input.mapOptionalInputValue<List<HostingCustomDomainRequiredDnsUpdate>, List<Map<String, dynamic>>>(requiredDnsUpdates, (value) => pulumi.Input.encodeList<HostingCustomDomainRequiredDnsUpdate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'siteId': ?siteId,
      'updateTime': ?updateTime,
      'waitDnsVerification': ?waitDnsVerification,
    };
  }

  factory HostingCustomDomainState.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainState(
      certPreference: (() { final guardedValue = map['certPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certs: (() { final guardedValue = map['certs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainCert>(guardedValue, (value) => HostingCustomDomainCert.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomain: (() { final guardedValue = map['customDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostState: (() { final guardedValue = map['hostState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issues: (() { final guardedValue = map['issues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainIssue>(guardedValue, (value) => HostingCustomDomainIssue.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipState: (() { final guardedValue = map['ownershipState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      redirectTarget: (() { final guardedValue = map['redirectTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredDnsUpdates: (() { final guardedValue = map['requiredDnsUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HostingCustomDomainRequiredDnsUpdate>(guardedValue, (value) => HostingCustomDomainRequiredDnsUpdate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      siteId: (() { final guardedValue = map['siteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waitDnsVerification: (() { final guardedValue = map['waitDnsVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_dapr.dart';
import 'get_app_identity.dart';
import 'get_app_ingress.dart';
import 'get_app_registry.dart';
import 'get_app_secret.dart';
import 'get_app_template.dart';

/// Result data returned by getApp.
class GetAppResult {
  /// The ID of the Container App Environment this Container App is linked to.
  final String containerAppEnvironmentId;
  final String customDomainVerificationId;

  /// A `dapr` block as detailed below.
  final List<GetAppDapr> daprs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  final List<GetAppIdentity> identities;

  /// An `ingress` block as detailed below.
  final List<GetAppIngress> ingresses;
  final String latestRevisionFqdn;
  final String latestRevisionName;
  final String location;

  /// The max inactive revisions for this Container App.
  final int maxInactiveRevisions;

  /// Name for the IP restriction rule.
  final String name;
  final List<String> outboundIpAddresses;
  final bool? readSecrets;

  /// A `registry` block as detailed below.
  final List<GetAppRegistry> registries;
  final String resourceGroupName;

  /// The revision mode of the Container App.
  final String revisionMode;

  /// One or more `secret` block as detailed below.
  final List<GetAppSecret> secrets;

  /// A mapping of tags to assign to the Container App.
  final Map<String, String> tags;

  /// A `template` block as detailed below.
  final List<GetAppTemplate> templates;

  /// The name of the Workload Profile in the Container App Environment in which this Container App is running.
  final String workloadProfileName;

  /// Creates a new [GetAppResult].
  /// [containerAppEnvironmentId] The ID of the Container App Environment this Container App is linked to.
  /// [customDomainVerificationId] Required.
  /// [daprs] A `dapr` block as detailed below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] Resource ID for the User Assigned Managed identity to use when pulling from the Container Registry.
  /// [ingresses] An `ingress` block as detailed below.
  /// [latestRevisionFqdn] Required.
  /// [latestRevisionName] Required.
  /// [location] Required.
  /// [maxInactiveRevisions] The max inactive revisions for this Container App.
  /// [name] Name for the IP restriction rule.
  /// [outboundIpAddresses] Required.
  /// [readSecrets] Optional.
  /// [registries] A `registry` block as detailed below.
  /// [resourceGroupName] Required.
  /// [revisionMode] The revision mode of the Container App.
  /// [secrets] One or more `secret` block as detailed below.
  /// [tags] A mapping of tags to assign to the Container App.
  /// [templates] A `template` block as detailed below.
  /// [workloadProfileName] The name of the Workload Profile in the Container App Environment in which this Container App is running.
  GetAppResult({
    required this.containerAppEnvironmentId,
    required this.customDomainVerificationId,
    required this.daprs,
    required this.id,
    required this.identities,
    required this.ingresses,
    required this.latestRevisionFqdn,
    required this.latestRevisionName,
    required this.location,
    required this.maxInactiveRevisions,
    required this.name,
    required this.outboundIpAddresses,
    this.readSecrets,
    required this.registries,
    required this.resourceGroupName,
    required this.revisionMode,
    required this.secrets,
    required this.tags,
    required this.templates,
    required this.workloadProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'customDomainVerificationId': customDomainVerificationId,
      'daprs': pulumi.Input.encodeList<GetAppDapr, Map<String, dynamic>>(
        daprs,
        (value) => value.toMap(),
      ),
      'id': id,
      'identities':
          pulumi.Input.encodeList<GetAppIdentity, Map<String, dynamic>>(
            identities,
            (value) => value.toMap(),
          ),
      'ingresses': pulumi.Input.encodeList<GetAppIngress, Map<String, dynamic>>(
        ingresses,
        (value) => value.toMap(),
      ),
      'latestRevisionFqdn': latestRevisionFqdn,
      'latestRevisionName': latestRevisionName,
      'location': location,
      'maxInactiveRevisions': maxInactiveRevisions,
      'name': name,
      'outboundIpAddresses': outboundIpAddresses,
      'readSecrets': ?readSecrets,
      'registries':
          pulumi.Input.encodeList<GetAppRegistry, Map<String, dynamic>>(
            registries,
            (value) => value.toMap(),
          ),
      'resourceGroupName': resourceGroupName,
      'revisionMode': revisionMode,
      'secrets': pulumi.Input.encodeList<GetAppSecret, Map<String, dynamic>>(
        secrets,
        (value) => value.toMap(),
      ),
      'tags': tags,
      'templates':
          pulumi.Input.encodeList<GetAppTemplate, Map<String, dynamic>>(
            templates,
            (value) => value.toMap(),
          ),
      'workloadProfileName': workloadProfileName,
    };
  }

  factory GetAppResult.fromMap(Map<String, dynamic> map) {
    return GetAppResult(
      containerAppEnvironmentId: map['containerAppEnvironmentId'] as String,
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      daprs: pulumi.Input.decodeList<GetAppDapr>(
        map['daprs']!,
        (value) => GetAppDapr.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetAppIdentity>(
        map['identities']!,
        (value) =>
            GetAppIdentity.fromMap((value as Map).cast<String, dynamic>()),
      ),
      ingresses: pulumi.Input.decodeList<GetAppIngress>(
        map['ingresses']!,
        (value) =>
            GetAppIngress.fromMap((value as Map).cast<String, dynamic>()),
      ),
      latestRevisionFqdn: map['latestRevisionFqdn'] as String,
      latestRevisionName: map['latestRevisionName'] as String,
      location: map['location'] as String,
      maxInactiveRevisions: map['maxInactiveRevisions'] as int,
      name: map['name'] as String,
      outboundIpAddresses: (map['outboundIpAddresses'] as List).cast<String>(),
      readSecrets: (() {
        final guardedValue = map['readSecrets'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      registries: pulumi.Input.decodeList<GetAppRegistry>(
        map['registries']!,
        (value) =>
            GetAppRegistry.fromMap((value as Map).cast<String, dynamic>()),
      ),
      resourceGroupName: map['resourceGroupName'] as String,
      revisionMode: map['revisionMode'] as String,
      secrets: pulumi.Input.decodeList<GetAppSecret>(
        map['secrets']!,
        (value) => GetAppSecret.fromMap((value as Map).cast<String, dynamic>()),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      templates: pulumi.Input.decodeList<GetAppTemplate>(
        map['templates']!,
        (value) =>
            GetAppTemplate.fromMap((value as Map).cast<String, dynamic>()),
      ),
      workloadProfileName: map['workloadProfileName'] as String,
    );
  }
}

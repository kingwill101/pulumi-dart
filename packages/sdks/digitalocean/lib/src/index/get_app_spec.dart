// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_alert.dart';
import 'get_app_spec_database.dart';
import 'get_app_spec_domain.dart';
import 'get_app_spec_egress.dart';
import 'get_app_spec_env.dart';
import 'get_app_spec_function.dart';
import 'get_app_spec_ingress.dart';
import 'get_app_spec_job.dart';
import 'get_app_spec_maintenance.dart';
import 'get_app_spec_service.dart';
import 'get_app_spec_static_site.dart';
import 'get_app_spec_vpc.dart';
import 'get_app_spec_worker.dart';

class GetAppSpec {
  /// Describes an alert policy for the component.
  final List<GetAppSpecAlert>? alerts;
  final List<GetAppSpecDatabase>? databases;
  /// Whether to disable the edge cache for the app. Default is false, which enables the edge cache.
  final bool? disableEdgeCache;
  /// Email obfuscation configuration for the app. Default is false, which keeps the email obfuscated.
  final bool? disableEmailObfuscation;
  final List<GetAppSpecDomain> domain;
  final List<String> domains;
  final List<GetAppSpecEgress>? egresses;
  /// Whether to enable enhanced threat control for the app. Default is false. Set to true to enable enhanced threat control, putting additional security measures for Layer 7 DDoS attacks.
  final bool? enhancedThreatControlEnabled;
  /// Describes an environment variable made available to an app competent.
  final List<GetAppSpecEnv>? envs;
  /// List of features which is applied to the app
  final List<String> features;
  final List<GetAppSpecFunction>? functions;
  final GetAppSpecIngress ingress;
  final List<GetAppSpecJob>? jobs;
  /// Specification to configure maintenance settings for the app, such as maintenance mode and archiving the app.
  final GetAppSpecMaintenance? maintenance;
  /// The name of the component.
  final String name;
  /// The slug for the DigitalOcean data center region hosting the app
  final String? region;
  final List<GetAppSpecService>? services;
  final List<GetAppSpecStaticSite>? staticSites;
  final List<GetAppSpecVpc>? vpcs;
  final List<GetAppSpecWorker>? workers;

  /// Creates a new [GetAppSpec].
  /// [alerts] Describes an alert policy for the component.
  /// [databases] Optional.
  /// [disableEdgeCache] Whether to disable the edge cache for the app. Default is false, which enables the edge cache.
  /// [disableEmailObfuscation] Email obfuscation configuration for the app. Default is false, which keeps the email obfuscated.
  /// [domain] Required.
  /// [domains] Required.
  /// [egresses] Optional.
  /// [enhancedThreatControlEnabled] Whether to enable enhanced threat control for the app. Default is false. Set to true to enable enhanced threat control, putting additional security measures for Layer 7 DDoS attacks.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [features] List of features which is applied to the app
  /// [functions] Optional.
  /// [ingress] Required.
  /// [jobs] Optional.
  /// [maintenance] Specification to configure maintenance settings for the app, such as maintenance mode and archiving the app.
  /// [name] The name of the component.
  /// [region] The slug for the DigitalOcean data center region hosting the app
  /// [services] Optional.
  /// [staticSites] Optional.
  /// [vpcs] Optional.
  /// [workers] Optional.
  GetAppSpec({
    this.alerts,
    this.databases,
    this.disableEdgeCache,
    this.disableEmailObfuscation,
    required this.domain,
    required this.domains,
    this.egresses,
    this.enhancedThreatControlEnabled,
    this.envs,
    required this.features,
    this.functions,
    required this.ingress,
    this.jobs,
    this.maintenance,
    required this.name,
    this.region,
    this.services,
    this.staticSites,
    this.vpcs,
    this.workers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<GetAppSpecAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'databases': ?databases == null ? null : pulumi.Input.encodeList<GetAppSpecDatabase, Map<String, dynamic>>(databases!, (value) => value.toMap()),
      'disableEdgeCache': ?disableEdgeCache,
      'disableEmailObfuscation': ?disableEmailObfuscation,
      'domain': pulumi.Input.encodeList<GetAppSpecDomain, Map<String, dynamic>>(domain, (value) => value.toMap()),
      'domains': domains,
      'egresses': ?egresses == null ? null : pulumi.Input.encodeList<GetAppSpecEgress, Map<String, dynamic>>(egresses!, (value) => value.toMap()),
      'enhancedThreatControlEnabled': ?enhancedThreatControlEnabled,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<GetAppSpecEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'features': features,
      'functions': ?functions == null ? null : pulumi.Input.encodeList<GetAppSpecFunction, Map<String, dynamic>>(functions!, (value) => value.toMap()),
      'ingress': ingress.toMap(),
      'jobs': ?jobs == null ? null : pulumi.Input.encodeList<GetAppSpecJob, Map<String, dynamic>>(jobs!, (value) => value.toMap()),
      'maintenance': ?maintenance == null ? null : maintenance!.toMap(),
      'name': name,
      'region': ?region,
      'services': ?services == null ? null : pulumi.Input.encodeList<GetAppSpecService, Map<String, dynamic>>(services!, (value) => value.toMap()),
      'staticSites': ?staticSites == null ? null : pulumi.Input.encodeList<GetAppSpecStaticSite, Map<String, dynamic>>(staticSites!, (value) => value.toMap()),
      'vpcs': ?vpcs == null ? null : pulumi.Input.encodeList<GetAppSpecVpc, Map<String, dynamic>>(vpcs!, (value) => value.toMap()),
      'workers': ?workers == null ? null : pulumi.Input.encodeList<GetAppSpecWorker, Map<String, dynamic>>(workers!, (value) => value.toMap()),
    };
  }

  factory GetAppSpec.fromMap(Map<String, dynamic> map) {
    return GetAppSpec(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<GetAppSpecAlert>(map['alerts'], (value) => GetAppSpecAlert.fromMap((value as Map).cast<String, dynamic>())),
      databases: map['databases'] == null ? null : pulumi.Input.decodeList<GetAppSpecDatabase>(map['databases'], (value) => GetAppSpecDatabase.fromMap((value as Map).cast<String, dynamic>())),
      disableEdgeCache: map['disableEdgeCache'] == null ? null : map['disableEdgeCache'] as bool,
      disableEmailObfuscation: map['disableEmailObfuscation'] == null ? null : map['disableEmailObfuscation'] as bool,
      domain: pulumi.Input.decodeList<GetAppSpecDomain>(map['domain'], (value) => GetAppSpecDomain.fromMap((value as Map).cast<String, dynamic>())),
      domains: (map['domains'] as List).cast<String>(),
      egresses: map['egresses'] == null ? null : pulumi.Input.decodeList<GetAppSpecEgress>(map['egresses'], (value) => GetAppSpecEgress.fromMap((value as Map).cast<String, dynamic>())),
      enhancedThreatControlEnabled: map['enhancedThreatControlEnabled'] == null ? null : map['enhancedThreatControlEnabled'] as bool,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<GetAppSpecEnv>(map['envs'], (value) => GetAppSpecEnv.fromMap((value as Map).cast<String, dynamic>())),
      features: (map['features'] as List).cast<String>(),
      functions: map['functions'] == null ? null : pulumi.Input.decodeList<GetAppSpecFunction>(map['functions'], (value) => GetAppSpecFunction.fromMap((value as Map).cast<String, dynamic>())),
      ingress: GetAppSpecIngress.fromMap((map['ingress'] as Map).cast<String, dynamic>()),
      jobs: map['jobs'] == null ? null : pulumi.Input.decodeList<GetAppSpecJob>(map['jobs'], (value) => GetAppSpecJob.fromMap((value as Map).cast<String, dynamic>())),
      maintenance: map['maintenance'] == null ? null : GetAppSpecMaintenance.fromMap((map['maintenance'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      services: map['services'] == null ? null : pulumi.Input.decodeList<GetAppSpecService>(map['services'], (value) => GetAppSpecService.fromMap((value as Map).cast<String, dynamic>())),
      staticSites: map['staticSites'] == null ? null : pulumi.Input.decodeList<GetAppSpecStaticSite>(map['staticSites'], (value) => GetAppSpecStaticSite.fromMap((value as Map).cast<String, dynamic>())),
      vpcs: map['vpcs'] == null ? null : pulumi.Input.decodeList<GetAppSpecVpc>(map['vpcs'], (value) => GetAppSpecVpc.fromMap((value as Map).cast<String, dynamic>())),
      workers: map['workers'] == null ? null : pulumi.Input.decodeList<GetAppSpecWorker>(map['workers'], (value) => GetAppSpecWorker.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


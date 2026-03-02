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
  final pulumi.Input<List<GetAppSpecAlert>>? alerts;
  final pulumi.Input<List<GetAppSpecDatabase>>? databases;
  /// Whether to disable the edge cache for the app. Default is false, which enables the edge cache.
  final pulumi.Input<bool>? disableEdgeCache;
  /// Email obfuscation configuration for the app. Default is false, which keeps the email obfuscated.
  final pulumi.Input<bool>? disableEmailObfuscation;
  final pulumi.Input<List<GetAppSpecDomain>> domain;
  final pulumi.Input<List<String>> domains;
  final pulumi.Input<List<GetAppSpecEgress>>? egresses;
  /// Whether to enable enhanced threat control for the app. Default is false. Set to true to enable enhanced threat control, putting additional security measures for Layer 7 DDoS attacks.
  final pulumi.Input<bool>? enhancedThreatControlEnabled;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<GetAppSpecEnv>>? envs;
  /// List of features which is applied to the app
  final pulumi.Input<List<String>> features;
  final pulumi.Input<List<GetAppSpecFunction>>? functions;
  final pulumi.Input<GetAppSpecIngress> ingress;
  final pulumi.Input<List<GetAppSpecJob>>? jobs;
  /// Specification to configure maintenance settings for the app, such as maintenance mode and archiving the app.
  final pulumi.Input<GetAppSpecMaintenance>? maintenance;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// The slug for the DigitalOcean data center region hosting the app
  final pulumi.Input<String>? region;
  final pulumi.Input<List<GetAppSpecService>>? services;
  final pulumi.Input<List<GetAppSpecStaticSite>>? staticSites;
  final pulumi.Input<List<GetAppSpecVpc>>? vpcs;
  final pulumi.Input<List<GetAppSpecWorker>>? workers;

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
      'alerts': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecAlert>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<GetAppSpecAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databases': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<GetAppSpecDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableEdgeCache': ?disableEdgeCache,
      'disableEmailObfuscation': ?disableEmailObfuscation,
      'domain': pulumi.Input.mapInputValue<List<GetAppSpecDomain>, List<Map<String, dynamic>>>(domain, (value) => pulumi.Input.encodeList<GetAppSpecDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domains': domains,
      'egresses': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecEgress>, List<Map<String, dynamic>>>(egresses, (value) => pulumi.Input.encodeList<GetAppSpecEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enhancedThreatControlEnabled': ?enhancedThreatControlEnabled,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<GetAppSpecEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': features,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<GetAppSpecFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': pulumi.Input.mapInputValue<GetAppSpecIngress, Map<String, dynamic>>(ingress, (value) => value.toMap()),
      'jobs': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecJob>, List<Map<String, dynamic>>>(jobs, (value) => pulumi.Input.encodeList<GetAppSpecJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenance': ?pulumi.Input.mapOptionalInputValue<GetAppSpecMaintenance, Map<String, dynamic>>(maintenance, (value) => value.toMap()),
      'name': name,
      'region': ?region,
      'services': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<GetAppSpecService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'staticSites': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecStaticSite>, List<Map<String, dynamic>>>(staticSites, (value) => pulumi.Input.encodeList<GetAppSpecStaticSite, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<GetAppSpecVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workers': ?pulumi.Input.mapOptionalInputValue<List<GetAppSpecWorker>, List<Map<String, dynamic>>>(workers, (value) => pulumi.Input.encodeList<GetAppSpecWorker, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAppSpec.fromMap(Map<String, dynamic> map) {
    return GetAppSpec(
      alerts: map['alerts'] == null ? null : (pulumi.Input.decodeList<GetAppSpecAlert>(map['alerts'], (value) => GetAppSpecAlert.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databases: map['databases'] == null ? null : (pulumi.Input.decodeList<GetAppSpecDatabase>(map['databases'], (value) => GetAppSpecDatabase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disableEdgeCache: map['disableEdgeCache'] == null ? null : (map['disableEdgeCache'] as bool).input(),
      disableEmailObfuscation: map['disableEmailObfuscation'] == null ? null : (map['disableEmailObfuscation'] as bool).input(),
      domain: (pulumi.Input.decodeList<GetAppSpecDomain>(map['domain'], (value) => GetAppSpecDomain.fromMap((value as Map).cast<String, dynamic>()))).input(),
      domains: ((map['domains'] as List).cast<String>()).input(),
      egresses: map['egresses'] == null ? null : (pulumi.Input.decodeList<GetAppSpecEgress>(map['egresses'], (value) => GetAppSpecEgress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enhancedThreatControlEnabled: map['enhancedThreatControlEnabled'] == null ? null : (map['enhancedThreatControlEnabled'] as bool).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<GetAppSpecEnv>(map['envs'], (value) => GetAppSpecEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      features: ((map['features'] as List).cast<String>()).input(),
      functions: map['functions'] == null ? null : (pulumi.Input.decodeList<GetAppSpecFunction>(map['functions'], (value) => GetAppSpecFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingress: (GetAppSpecIngress.fromMap((map['ingress'] as Map).cast<String, dynamic>())).input(),
      jobs: map['jobs'] == null ? null : (pulumi.Input.decodeList<GetAppSpecJob>(map['jobs'], (value) => GetAppSpecJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintenance: map['maintenance'] == null ? null : (GetAppSpecMaintenance.fromMap((map['maintenance'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeList<GetAppSpecService>(map['services'], (value) => GetAppSpecService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      staticSites: map['staticSites'] == null ? null : (pulumi.Input.decodeList<GetAppSpecStaticSite>(map['staticSites'], (value) => GetAppSpecStaticSite.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcs: map['vpcs'] == null ? null : (pulumi.Input.decodeList<GetAppSpecVpc>(map['vpcs'], (value) => GetAppSpecVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workers: map['workers'] == null ? null : (pulumi.Input.decodeList<GetAppSpecWorker>(map['workers'], (value) => GetAppSpecWorker.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


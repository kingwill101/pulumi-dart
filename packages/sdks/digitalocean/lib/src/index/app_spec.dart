// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_alert.dart';
import 'app_spec_database.dart';
import 'app_spec_domain_name.dart';
import 'app_spec_egress.dart';
import 'app_spec_env.dart';
import 'app_spec_function.dart';
import 'app_spec_ingress.dart';
import 'app_spec_job.dart';
import 'app_spec_maintenance.dart';
import 'app_spec_service.dart';
import 'app_spec_static_site.dart';
import 'app_spec_vpc.dart';
import 'app_spec_worker.dart';

class AppSpec {
  /// Describes an alert policy for the component.
  final pulumi.Input<List<AppSpecAlert>>? alerts;
  final pulumi.Input<List<AppSpecDatabase>>? databases;
  /// A boolean indicating whether to disable the edge cache for this app. Default: `false`. Available only for non-static sites. Requires custom domains and applies to all the domains of the app.
  final pulumi.Input<bool>? disableEdgeCache;
  /// A boolean indicating whether to disable email obfuscation for this app. Default: `false`. Requires custom domains and applies to all the domains of the app.
  final pulumi.Input<bool>? disableEmailObfuscation;
  /// Describes a domain where the application will be made available.
  final pulumi.Input<List<AppSpecDomainName>>? domainNames;
  final pulumi.Input<List<String>>? domains;
  /// Specification for app egress configurations.
  final pulumi.Input<List<AppSpecEgress>>? egresses;
  /// A boolean, when set to `true`, enables enhanced analyzing of incoming traffic to prevent layer 7 DDoS attacks. Default: `false`. Requires custom domains and applies to all the domains of the app.
  final pulumi.Input<bool>? enhancedThreatControlEnabled;
  /// Describes an environment variable made available to an app competent.
  final pulumi.Input<List<AppSpecEnv>>? envs;
  /// A list of the features applied to the app. The default buildpack can be overridden here. List of available buildpacks can be found using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/reference/apps/list-buildpacks/)
  final pulumi.Input<List<String>>? features;
  final pulumi.Input<List<AppSpecFunction>>? functions;
  /// Specification for component routing, rewrites, and redirects.
  final pulumi.Input<AppSpecIngress>? ingress;
  final pulumi.Input<List<AppSpecJob>>? jobs;
  /// Specification to configure maintenance settings for the app, such as maintenance mode and archiving the app.
  final pulumi.Input<AppSpecMaintenance>? maintenance;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// The slug for the DigitalOcean data center region hosting the app.
  final pulumi.Input<String>? region;
  final pulumi.Input<List<AppSpecService>>? services;
  final pulumi.Input<List<AppSpecStaticSite>>? staticSites;
  /// Specification for VPC.
  final pulumi.Input<List<AppSpecVpc>>? vpcs;
  final pulumi.Input<List<AppSpecWorker>>? workers;

  /// Creates a new [AppSpec].
  /// [alerts] Describes an alert policy for the component.
  /// [databases] Optional.
  /// [disableEdgeCache] A boolean indicating whether to disable the edge cache for this app. Default: `false`. Available only for non-static sites. Requires custom domains and applies to all the domains of the app.
  /// [disableEmailObfuscation] A boolean indicating whether to disable email obfuscation for this app. Default: `false`. Requires custom domains and applies to all the domains of the app.
  /// [domainNames] Describes a domain where the application will be made available.
  /// [domains] Optional.
  /// [egresses] Specification for app egress configurations.
  /// [enhancedThreatControlEnabled] A boolean, when set to `true`, enables enhanced analyzing of incoming traffic to prevent layer 7 DDoS attacks. Default: `false`. Requires custom domains and applies to all the domains of the app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [features] A list of the features applied to the app. The default buildpack can be overridden here. List of available buildpacks can be found using the [doctl CLI](https://docs.digitalocean.com/reference/doctl/reference/apps/list-buildpacks/)
  /// [functions] Optional.
  /// [ingress] Specification for component routing, rewrites, and redirects.
  /// [jobs] Optional.
  /// [maintenance] Specification to configure maintenance settings for the app, such as maintenance mode and archiving the app.
  /// [name] The name of the component.
  /// [region] The slug for the DigitalOcean data center region hosting the app.
  /// [services] Optional.
  /// [staticSites] Optional.
  /// [vpcs] Specification for VPC.
  /// [workers] Optional.
  AppSpec({
    this.alerts,
    this.databases,
    this.disableEdgeCache,
    this.disableEmailObfuscation,
    this.domainNames,
    this.domains,
    this.egresses,
    this.enhancedThreatControlEnabled,
    this.envs,
    this.features,
    this.functions,
    this.ingress,
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
      'alerts': ?pulumi.Input.mapOptionalInputValue<List<AppSpecAlert>, List<Map<String, dynamic>>>(alerts, (value) => pulumi.Input.encodeList<AppSpecAlert, Map<String, dynamic>>(value, (value) => value.toMap())),
      'databases': ?pulumi.Input.mapOptionalInputValue<List<AppSpecDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<AppSpecDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableEdgeCache': ?disableEdgeCache,
      'disableEmailObfuscation': ?disableEmailObfuscation,
      'domainNames': ?pulumi.Input.mapOptionalInputValue<List<AppSpecDomainName>, List<Map<String, dynamic>>>(domainNames, (value) => pulumi.Input.encodeList<AppSpecDomainName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'domains': ?domains,
      'egresses': ?pulumi.Input.mapOptionalInputValue<List<AppSpecEgress>, List<Map<String, dynamic>>>(egresses, (value) => pulumi.Input.encodeList<AppSpecEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enhancedThreatControlEnabled': ?enhancedThreatControlEnabled,
      'envs': ?pulumi.Input.mapOptionalInputValue<List<AppSpecEnv>, List<Map<String, dynamic>>>(envs, (value) => pulumi.Input.encodeList<AppSpecEnv, Map<String, dynamic>>(value, (value) => value.toMap())),
      'features': ?features,
      'functions': ?pulumi.Input.mapOptionalInputValue<List<AppSpecFunction>, List<Map<String, dynamic>>>(functions, (value) => pulumi.Input.encodeList<AppSpecFunction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingress': ?pulumi.Input.mapOptionalInputValue<AppSpecIngress, Map<String, dynamic>>(ingress, (value) => value.toMap()),
      'jobs': ?pulumi.Input.mapOptionalInputValue<List<AppSpecJob>, List<Map<String, dynamic>>>(jobs, (value) => pulumi.Input.encodeList<AppSpecJob, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maintenance': ?pulumi.Input.mapOptionalInputValue<AppSpecMaintenance, Map<String, dynamic>>(maintenance, (value) => value.toMap()),
      'name': name,
      'region': ?region,
      'services': ?pulumi.Input.mapOptionalInputValue<List<AppSpecService>, List<Map<String, dynamic>>>(services, (value) => pulumi.Input.encodeList<AppSpecService, Map<String, dynamic>>(value, (value) => value.toMap())),
      'staticSites': ?pulumi.Input.mapOptionalInputValue<List<AppSpecStaticSite>, List<Map<String, dynamic>>>(staticSites, (value) => pulumi.Input.encodeList<AppSpecStaticSite, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcs': ?pulumi.Input.mapOptionalInputValue<List<AppSpecVpc>, List<Map<String, dynamic>>>(vpcs, (value) => pulumi.Input.encodeList<AppSpecVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'workers': ?pulumi.Input.mapOptionalInputValue<List<AppSpecWorker>, List<Map<String, dynamic>>>(workers, (value) => pulumi.Input.encodeList<AppSpecWorker, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppSpec.fromMap(Map<String, dynamic> map) {
    return AppSpec(
      alerts: map['alerts'] == null ? null : (pulumi.Input.decodeList<AppSpecAlert>(map['alerts'], (value) => AppSpecAlert.fromMap((value as Map).cast<String, dynamic>()))).input(),
      databases: map['databases'] == null ? null : (pulumi.Input.decodeList<AppSpecDatabase>(map['databases'], (value) => AppSpecDatabase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      disableEdgeCache: map['disableEdgeCache'] == null ? null : (map['disableEdgeCache'] as bool).input(),
      disableEmailObfuscation: map['disableEmailObfuscation'] == null ? null : (map['disableEmailObfuscation'] as bool).input(),
      domainNames: map['domainNames'] == null ? null : (pulumi.Input.decodeList<AppSpecDomainName>(map['domainNames'], (value) => AppSpecDomainName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      domains: map['domains'] == null ? null : ((map['domains'] as List).cast<String>()).input(),
      egresses: map['egresses'] == null ? null : (pulumi.Input.decodeList<AppSpecEgress>(map['egresses'], (value) => AppSpecEgress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enhancedThreatControlEnabled: map['enhancedThreatControlEnabled'] == null ? null : (map['enhancedThreatControlEnabled'] as bool).input(),
      envs: map['envs'] == null ? null : (pulumi.Input.decodeList<AppSpecEnv>(map['envs'], (value) => AppSpecEnv.fromMap((value as Map).cast<String, dynamic>()))).input(),
      features: map['features'] == null ? null : ((map['features'] as List).cast<String>()).input(),
      functions: map['functions'] == null ? null : (pulumi.Input.decodeList<AppSpecFunction>(map['functions'], (value) => AppSpecFunction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingress: map['ingress'] == null ? null : (AppSpecIngress.fromMap((map['ingress'] as Map).cast<String, dynamic>())).input(),
      jobs: map['jobs'] == null ? null : (pulumi.Input.decodeList<AppSpecJob>(map['jobs'], (value) => AppSpecJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maintenance: map['maintenance'] == null ? null : (AppSpecMaintenance.fromMap((map['maintenance'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      services: map['services'] == null ? null : (pulumi.Input.decodeList<AppSpecService>(map['services'], (value) => AppSpecService.fromMap((value as Map).cast<String, dynamic>()))).input(),
      staticSites: map['staticSites'] == null ? null : (pulumi.Input.decodeList<AppSpecStaticSite>(map['staticSites'], (value) => AppSpecStaticSite.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcs: map['vpcs'] == null ? null : (pulumi.Input.decodeList<AppSpecVpc>(map['vpcs'], (value) => AppSpecVpc.fromMap((value as Map).cast<String, dynamic>()))).input(),
      workers: map['workers'] == null ? null : (pulumi.Input.decodeList<AppSpecWorker>(map['workers'], (value) => AppSpecWorker.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


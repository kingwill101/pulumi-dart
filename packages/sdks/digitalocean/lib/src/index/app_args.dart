// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_dedicated_ip.dart';
import 'app_spec.dart';

/// {@template pulumi_index_app_app_args_doc}
/// The set of arguments for App.
/// {@endtemplate}
/// {@macro pulumi_index_app_app_args_doc}
class AppArgs {
  /// The dedicated egress IP addresses associated with the app.
  final pulumi.Input<List<AppDedicatedIp>>? dedicatedIps;

  /// (Optional) Controls how many deployments are requested per API page when listing deployments during create/update waits. Defaults to `20`. Reduce this value (for example `5`) if you experience API timeouts when listing deployments.
  final pulumi.Input<int>? deploymentPerPage;

  /// The ID of the project that the app is assigned to.
  ///
  /// A spec can contain multiple components.
  ///
  /// A `service` can contain:
  final pulumi.Input<String>? projectId;

  /// A DigitalOcean App spec describing the app.
  final pulumi.Input<AppSpec>? spec;

  /// Creates a new [AppArgs].
  /// [dedicatedIps] The dedicated egress IP addresses associated with the app.
  /// [deploymentPerPage] (Optional) Controls how many deployments are requested per API page when listing deployments during create/update waits. Defaults to `20`. Reduce this value (for example `5`) if you experience API timeouts when listing deployments.
  /// [projectId] The ID of the project that the app is assigned to.
  /// [spec] A DigitalOcean App spec describing the app.
  AppArgs({
    this.dedicatedIps,
    this.deploymentPerPage,
    this.projectId,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedIps':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppDedicatedIp>,
            List<Map<String, dynamic>>
          >(
            dedicatedIps,
            (value) =>
                pulumi.Input.encodeList<AppDedicatedIp, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'deploymentPerPage': ?deploymentPerPage,
      'projectId': ?projectId,
      'spec':
          ?pulumi.Input.mapOptionalInputValue<AppSpec, Map<String, dynamic>>(
            spec,
            (value) => value.toMap(),
          ),
    };
  }

  factory AppArgs.fromMap(Map<String, dynamic> map) {
    return AppArgs(
      dedicatedIps: (() {
        final guardedValue = map['dedicatedIps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppDedicatedIp>(
            guardedValue,
            (value) =>
                AppDedicatedIp.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      deploymentPerPage: (() {
        final guardedValue = map['deploymentPerPage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppSpec.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}

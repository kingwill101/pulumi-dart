// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_test_run_reachability_detail.dart';

/// Result data returned by getConnectivityTestRun.
class GetConnectivityTestRunResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  /// Connectivity test reachability details.
  /// Structure is documented below.
  final List<GetConnectivityTestRunReachabilityDetail>? reachabilityDetails;

  /// Creates a new [GetConnectivityTestRunResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [reachabilityDetails] Connectivity test reachability details.
  const GetConnectivityTestRunResult({
    this.id,
    this.name,
    this.project,
    this.reachabilityDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'reachabilityDetails': ?(() { final guardedValue = reachabilityDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectivityTestRunReachabilityDetail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetConnectivityTestRunResult.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestRunResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reachabilityDetails: (() { final guardedValue = map['reachabilityDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectivityTestRunReachabilityDetail>(guardedValue, (value) => GetConnectivityTestRunReachabilityDetail.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_hosting_traffic_current_split.dart';

class AppHostingTrafficCurrent {
  /// (Output)
  /// A list of traffic splits that together represent where traffic is being routed.
  /// Structure is documented below.
  final pulumi.Input<List<AppHostingTrafficCurrentSplit>>? splits;

  /// Creates a new [AppHostingTrafficCurrent].
  /// [splits] (Output)
  AppHostingTrafficCurrent({
    this.splits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'splits': ?pulumi.Input.mapOptionalInputValue<List<AppHostingTrafficCurrentSplit>, List<Map<String, dynamic>>>(splits, (value) => pulumi.Input.encodeList<AppHostingTrafficCurrentSplit, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppHostingTrafficCurrent.fromMap(Map<String, dynamic> map) {
    return AppHostingTrafficCurrent(
      splits: map['splits'] == null ? null : (pulumi.Input.decodeList<AppHostingTrafficCurrentSplit>(map['splits'], (value) => AppHostingTrafficCurrentSplit.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'version_kind_containeranalysis_v1alpha1.dart';

/// Version contains structured information about the version of the package. For a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/debian-packages-version-convention For a discussion of this in Redhat/Fedora/Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
class VersionContaineranalysisV1alpha1 {
  /// Used to correct mistakes in the version numbering scheme.
  final pulumi.Input<int>? epoch;

  /// Whether this version is vulnerable, when defining the version bounds. For example, if the minimum version is 2.0, inclusive=true would say 2.0 is vulnerable, while inclusive=false would say it's not
  final pulumi.Input<bool>? inclusive;

  /// Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
  final pulumi.Input<VersionKindContaineranalysisV1alpha1>? kind;

  /// The main part of the version name.
  final pulumi.Input<String>? name;

  /// The iteration of the package build from the above version.
  final pulumi.Input<String>? revision;

  /// Creates a new [VersionContaineranalysisV1alpha1].
  /// [epoch] Used to correct mistakes in the version numbering scheme.
  /// [inclusive] Whether this version is vulnerable, when defining the version bounds. For example, if the minimum version is 2.0, inclusive=true would say 2.0 is vulnerable, while inclusive=false would say it's not
  /// [kind] Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
  /// [name] The main part of the version name.
  /// [revision] The iteration of the package build from the above version.
  VersionContaineranalysisV1alpha1({
    this.epoch,
    this.inclusive,
    this.kind,
    this.name,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'epoch': ?epoch,
      'inclusive': ?inclusive,
      'kind':
          ?pulumi.Input.mapOptionalInputValue<
            VersionKindContaineranalysisV1alpha1,
            String
          >(kind, (value) => value.wireValue),
      'name': ?name,
      'revision': ?revision,
    };
  }

  factory VersionContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return VersionContaineranalysisV1alpha1(
      epoch: (() {
        final guardedValue = map['epoch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      inclusive: (() {
        final guardedValue = map['inclusive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VersionKindContaineranalysisV1alpha1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      revision: (() {
        final guardedValue = map['revision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

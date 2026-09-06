// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_favorite_process_args_doc}
/// The set of arguments for FavoriteProcess.
/// {@endtemplate}
/// {@macro pulumi_testbase_favorite_process_args_doc}
class FavoriteProcessArgs {
  /// The actual name of the favorite process. It will be equal to resource name except for the scenario that the process name contains characters that are not allowed in the resource name.
  final pulumi.Input<String> actualProcessName;
  /// The resource name of a favorite process in a package. If the process name contains characters that are not allowed in Azure Resource Name, we use 'actualProcessName' in request body to submit the name.
  final pulumi.Input<String?>? favoriteProcessResourceName;
  /// The resource name of the Test Base Package.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [FavoriteProcessArgs].
  /// [actualProcessName] The actual name of the favorite process. It will be equal to resource name except for the scenario that the process name contains characters that are not allowed in the resource name.
  /// [favoriteProcessResourceName] The resource name of a favorite process in a package. If the process name contains characters that are not allowed in Azure Resource Name, we use 'actualProcessName' in request body to submit the name.
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  const FavoriteProcessArgs({
    required this.actualProcessName,
    this.favoriteProcessResourceName,
    required this.packageName,
    required this.resourceGroupName,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualProcessName': actualProcessName,
      'favoriteProcessResourceName': ?favoriteProcessResourceName,
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory FavoriteProcessArgs.fromMap(Map<String, dynamic> map) {
    return FavoriteProcessArgs(
      actualProcessName: pulumi.Input.fromValue(map['actualProcessName'] as String),
      favoriteProcessResourceName: (() { final guardedValue = map['favoriteProcessResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
    );
  }
}

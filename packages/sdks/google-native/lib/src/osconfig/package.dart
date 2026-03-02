// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package_desired_state.dart';
import 'package_manager.dart';

/// Package is a reference to the software package to be installed or removed. The agent on the VM instance uses the system package manager to apply the config. These are the commands that the agent uses to install or remove packages. Apt install: `apt-get update && apt-get -y install package1 package2 package3` remove: `apt-get -y remove package1 package2 package3` Yum install: `yum -y install package1 package2 package3` remove: `yum -y remove package1 package2 package3` Zypper install: `zypper install package1 package2 package3` remove: `zypper rm package1 package2` Googet install: `googet -noconfirm install package1 package2 package3` remove: `googet -noconfirm remove package1 package2 package3`
class Package {
  /// The desired_state the agent should maintain for this package. The default is to ensure the package is installed.
  final pulumi.Input<PackageDesiredState>? desiredState;
  /// Type of package manager that can be used to install this package. If a system does not have the package manager, the package is not installed or removed no error message is returned. By default, or if you specify `ANY`, the agent attempts to install and remove this package using the default package manager. This is useful when creating a policy that applies to different types of systems. The default behavior is ANY.
  final pulumi.Input<PackageManager>? manager;
  /// The name of the package. A package is uniquely identified for conflict validation by checking the package name and the manager(s) that the package targets.
  final pulumi.Input<String> name;

  /// Creates a new [Package].
  /// [desiredState] The desired_state the agent should maintain for this package. The default is to ensure the package is installed.
  /// [manager] Type of package manager that can be used to install this package. If a system does not have the package manager, the package is not installed or removed no error message is returned. By default, or if you specify `ANY`, the agent attempts to install and remove this package using the default package manager. This is useful when creating a policy that applies to different types of systems. The default behavior is ANY.
  /// [name] The name of the package. A package is uniquely identified for conflict validation by checking the package name and the manager(s) that the package targets.
  Package({
    this.desiredState,
    this.manager,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredState': ?pulumi.Input.mapOptionalInputValue<PackageDesiredState, String>(desiredState, (value) => value.value),
      'manager': ?pulumi.Input.mapOptionalInputValue<PackageManager, String>(manager, (value) => value.value),
      'name': name,
    };
  }

  factory Package.fromMap(Map<String, dynamic> map) {
    return Package(
      desiredState: map['desiredState'] == null ? null : (PackageDesiredState.fromValue(map['desiredState'] as String)).input(),
      manager: map['manager'] == null ? null : (PackageManager.fromValue(map['manager'] as String)).input(),
      name: (map['name'] as String).input(),
    );
  }
}


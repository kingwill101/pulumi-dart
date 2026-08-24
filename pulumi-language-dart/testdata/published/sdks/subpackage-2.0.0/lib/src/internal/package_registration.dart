import 'package:pulumi/pulumi.dart' as pulumi;

final registerPackageRequest = pulumi.RegisterPackageRequest(
  name: "parameterized",
  version: "1.2.3",
  parameterization: pulumi.Parameterization(
    name: "subpackage",
    version: "2.0.0",
    value: <int>[72, 101, 108, 108, 111, 87, 111, 114, 108, 100],
  ),
);

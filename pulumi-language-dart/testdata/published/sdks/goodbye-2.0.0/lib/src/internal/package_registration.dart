import 'package:pulumi/pulumi.dart' as pulumi;

final registerPackageRequest = pulumi.RegisterPackageRequest(
  name: "parameterized",
  version: "1.2.3",
  parameterization: pulumi.Parameterization(
    name: "goodbye",
    version: "2.0.0",
    value: <int>[71, 111, 111, 100, 98, 121, 101],
  ),
);

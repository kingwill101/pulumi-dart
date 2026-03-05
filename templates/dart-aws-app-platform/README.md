# Dart AWS App Platform Template

Creates a Pulumi Dart stack using `pulumi_aws_app_platform` with low-cost defaults:

- ECS/Fargate service
- ECR image build/push from `./app`
- ALB ingress
- autoscaling baseline

Local usage:

```bash
pulumi new ./templates/dart-aws-app-platform -y --name my-dart-app --stack dev --secrets-provider passphrase
```

Remote usage:

```bash
pulumi new https://github.com/kingwill101/pulumi-dart/tree/main/templates/dart-aws-app-platform -y --name my-dart-app --stack dev --secrets-provider passphrase
```


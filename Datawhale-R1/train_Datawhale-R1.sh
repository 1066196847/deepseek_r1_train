
accelerate launch 的方式来启动分布式训练时，可以用--config来指定配置文件，默认在代码里用下面2行就可以自动解析
    parser = TrlParser((ModelConfig, DatasetArguments, GRPOConfig, SwanlabArguments))
    model_args, dataset_args, training_args, swanlab_args = (
        parser.parse_args_and_config()
    )
参数优先级：命令行参数 > YAML配置文件（Datawhale-R1.yaml） > 数据类默认值


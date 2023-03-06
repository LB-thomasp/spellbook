{{
    config(
        alias='tx_hash_labels_offramp',
        post_hook='{{ expose_spells_hide_trino(\'["ethereum"]\', "sector", "tx_hash_labels", \'["gentrexha"]\') }}'
    )
}}

SELECT * FROM {{ ref('cow_protocol_tx_hash_labels_offramp_ethereum') }}
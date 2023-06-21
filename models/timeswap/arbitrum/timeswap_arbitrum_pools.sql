{{ config(
    alias = 'pools',
    post_hook='{{ expose_spells(\'["arbitrum"]\',
                                "project",
                                "timeswap",
                                \'["raveena15, varunhawk19"]\') }}',
     unique_key = ['pool_pair', 'maturity', 'strike']
    )
}}

SELECT
    token0_symbol,
    token1_symbol,
    lower(token0_address) as token0_address,
    lower(token1_address) as token1_address,
    token0_decimals,
    token1_decimals,
    strike,
    maturity,
    pool_pair,
    chain,
    lower(borrow_contract_address) as borrow_contract_address,
    lower(lend_contract_address) as lend_contract_address
FROM
    (
        VALUES
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '272225893536750770770699685',
                '1679918400',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '680564733841876926926749214',
                '1679918400',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '272225893536750770770699685',
                '1680523200',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '680564733841876926926749214',
                '1680523200',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '272225893536750770770699685',
                '1681732800',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '595494142111642311060905563',
                '1681732800',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '340282366920938463463374607',
                '1684152000',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '782649443918158465965761597',
                '1684152000',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'plsARB',
                'USDC',
                '0x7a5D193fE4ED9098F7EAdC99797087C96b002907',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '238197656844656924424362225',
                '1683892800',
                'plsARB-USDC',
                'Arbitrum',
                '0xEbaDA7aA52C68Bdb6a2744F40AA2f3da76D469dc',
                '0xE1cd819b5a2C8FC65D3D77BFE0D0A0FF5Bb54326'
            ),
            (
                'gDAI',
                'DAI',
                '0xd85E038593d7A098614721EaE955EC2022B9B91B',
                '0xda10009cbd5d07dd0cecc66161fc93d7c9000da1',
                18,
                18,
                '343685190590147848098008353506085893570',
                '1685534400',
                'gDAI-DAI',
                'Arbitrum',
                '0xEbaDA7aA52C68Bdb6a2744F40AA2f3da76D469dc',
                '0xE1cd819b5a2C8FC65D3D77BFE0D0A0FF5Bb54326'
            ),
            (
                'plsARB',
                'USDC',
                '0x7a5D193fE4ED9098F7EAdC99797087C96b002907',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '204169420152563078078024764',
                '1686830400',
                'plsARB-USDC',
                'Arbitrum',
                '0xEbaDA7aA52C68Bdb6a2744F40AA2f3da76D469dc',
                '0xE1cd819b5a2C8FC65D3D77BFE0D0A0FF5Bb54326'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '272225893536750770770699685',
                '1686830400',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '578480023765595387887736832',
                '1686830400',
                'ARB-USDC',
                'Arbitrum',
                '0x275695f56e609cAD02C9898351386B4B0c1CFB3e',
                '0x8C76Cbb88f5974A457a2258AA91B4d494735E021'
            ),
            (
                'wstETH',
                'USDC',
                '0x5979D7b546E38E414F7E9822514be443A4800529',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '527437668727454618368230641519',
                '1686398400',
                'wstETH-USDC',
                'Arbitrum',
                '0xEbaDA7aA52C68Bdb6a2744F40AA2f3da76D469dc',
                '0xE1cd819b5a2C8FC65D3D77BFE0D0A0FF5Bb54326'
            ),
            (
                'unshETH',
                'USDC',
                '0x0ae38f7e10a43b5b2fb064b42a2f4514cba909ef',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '561465905419548464714568102262',
                '1687179600',
                'unshETH-USDC',
                'Arbitrum',
                '0xEbaDA7aA52C68Bdb6a2744F40AA2f3da76D469dc',
                '0xE1cd819b5a2C8FC65D3D77BFE0D0A0FF5Bb54326'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '204169420152563078078024764',
                '1689422400',
                'ARB-USDC',
                'Arbitrum',
                '0xFb466FBC00617C89E5865f4ef0bc6D48Ea150AC5',
                '0x8DC92083F5C4813c02b502ce1ea61f0a48A36A88'
            ),
            (
                'ARB',
                'USDC',
                '0x912ce59144191c1204e64559fe8253a0e49e6548',
                '0xff970a61a04b1ca14834a43f5de4533ebddb5cc8',
                18,
                6,
                '442367076997220002502386989',
                '1689422400',
                'ARB-USDC',
                'Arbitrum',
                '0xFb466FBC00617C89E5865f4ef0bc6D48Ea150AC5',
                '0x8DC92083F5C4813c02b502ce1ea61f0a48A36A88'
            )
    ) AS temp_table (
        token0_symbol,
        token1_symbol,
        token0_address,
        token1_address,
        token0_decimals,
        token1_decimals,
        strike,
        maturity,
        pool_pair,
        chain,
        borrow_contract_address,
        lend_contract_address
    )
window.draw_graph = ->
    ctx = document.getElementById("myChart").getContext('2d')
    barNum = gon.incomes_data.length
    labels = new Array(barNum)
    income_bgColors = new Array(barNum)
    income_bdColors = new Array(barNum)
    cost_bgColors = new Array(barNum)
    cost_bdColors = new Array(barNum)
    result_bgColors = new Array(barNum)
    result_bdColors = new Array(barNum)


    for i in [0...gon.incomes_data.length]
        labels[i] = i+1 +'月'
        income_bgColors[i] = 'rgba(0, 134, 186, 0.2)'
        income_bdColors[i] = 'rgba(0, 134, 186, 1)'
        cost_bgColors[i] = 'rgba(247, 176, 44, 0.2)'
        cost_bdColors[i] = 'rgba(247, 176, 44, 1)'
        result_bgColors[i] = 'rgba(135, 201, 164, 0.2)'
        result_bdColors[i] = 'rgba(135, 201, 164, 1)'


    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: labels
            datasets: [{
                label: '収入総額',
                data: gon.incomes_data,
                backgroundColor: income_bgColors,
                borderColor: income_bdColors,
                borderWidth: 1
            }, {
                label: '支出総額',
                data: gon.costs_data,
                backgroundColor: cost_bgColors,
                borderColor: cost_bdColors,
                borderWidth: 1
                type: 'bar'
            }, {
                label: '差額',
                data: gon.results_data,
                backgroundColor: result_bgColors,
                borderColor: result_bdColors,
                borderWidth: 1
                type: 'bar'
            }
            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    })
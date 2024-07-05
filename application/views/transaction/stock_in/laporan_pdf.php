<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title><?= $title_pdf;?></title>
        <style>
            #table {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #table td, #table th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #table tr:nth-child(even){background-color: #f2f2f2;}

            #table tr:hover {background-color: #ddd;}

            #table th {
                padding-top: 10px;
                padding-bottom: 10px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <div style="text-align:center">
            <h3> Laporan Gudang Sepatu</h3>
        </div>
        <table id="table">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Kode Barang</th>
                    <th>Produk Item</th>
                    <th>Qty</th>
                    <th>Detail</th>
                    <th>Date</th>
                </tr>
            </thead>
            <tbody>
            <?php $k = 1; ?>
            <?php foreach ($stock as $key => $i) : ?>
                <tr>
                    <th scope="row"><?= $k++; ?></th>
                    <td><?= $i->barcode ?></td>
                    <td><?= $i->item_name ?></td>
                    <td class="text-right"><?= $i->qty ?></td>
                    <td><?= $i->detail ?></td>
                    <td class="text-center"><?= indo_date($i->date) ?></td>
                </tr>
            <?php endforeach; ?>
            </tbody>
        </table>
    </body>
</html>
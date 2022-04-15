<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<div id="content" class="container">
    <?php echo $content_top; ?>
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>">
                <?php echo $breadcrumb['text']; ?>
            </a></li>
        <?php } ?>
    </ul>
	<h2><?php echo $heading_title; ?></h2>
	<p><?php echo $text_message . $order_id; ?></p>
    <p><?php echo $message_success; ?></p>
    <table style="width: 100%;text-align: left;">
        <tbody>
            <tr>
                <td valign="top" style="text-align:left;">
                    Вам необходимо произвести платеж в любой системе, позволяющей проводить оплату через ЕРИП (пункты
                    банковского обслуживания, банкоматы, платежные терминалы, системы интернет-банкинга, клиент-банкинга
                    и т.п.).
                    <br />
                    <br /> 1. Для этого в перечне услуг ЕРИП перейдите в раздел: <br />
                    <b>Система "Расчет" (ЕРИП)-&gt;Сервис E-POS-&gt;E-POS - оплата товаров и услуг</b><br />
                    <br /> В поле "Лицевой счет" введите <b><?php echo $order_id; ?></b> и нажмите "Продолжить"<br />
                    <br /> 3.Проверить корректность информации<br />
                    <br />4. Совершить платеж.<br />
                </td>
                <td style="text-align: center;padding: 40px 20px 0 0;vertical-align: middle">
                    <p><?php echo $qr_code; ?></p>
					<?php echo $qr_description; ?>
                </td>
            </tr>
        </tbody>
    </table>
	<?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
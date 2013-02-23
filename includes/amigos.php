<div class="blocos" id="publicidade">
    <!-- <img src="midias/banner.png" /> -->
    <div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pt_BR/all.js#xfbml=1&appId=220528184695248";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-like-box" data-href="http://www.facebook.com/pages/Gilgleciocom/198115126954073" data-width="300" data-show-faces="true" data-stream="false" data-header="false"></div>     
</div><!--blocos-->

<div class="blocos" id="meus-amigos">

    <span>meus amigos(<?php echo $list_amigos['num'] ?>) <a href="#">todos</a></span>
    
    <ul>
    	<?php
		if($list_amigos['num']>0){
			foreach($list_amigos['dados'] as $resAmigos){
				echo '<li><span><a href="perfil.php?uid='.$resAmigos[0].'"><img src="uploads/usuarios/'.user_img($resAmigos[3]).'" alt="" title="'.$resAmigos[1].' '.$resAmigos[2].'" /></a></span></li>';
			}
		}else{
			echo 'Você não tem amigos';
		}
		?>
    </ul>
</div><!--blocos-->
{**
  * templates/common/footer.tpl
  *
  * Copyright (c) 2014 Simon Fraser University Library
  * Copyright (c) 2003-2014 John Willinsky
  * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
  *
  * Common site footer.
  *}
</ul>
</main>
</div>
</div>
{if $displayPageHeaderTitle == "Editora IFPB"}
  <div class="img-associacoes">
    <div class="content-container">
      <ul class="row">
        <li class="col-md-3 col-xs-6 col-sm-6"><a class="img-link" href="http://periodicos.ifpb.edu.br/"><img src="{$baseUrl}/img/periodicos.jpg" alt="periodicos do ifpb"/></a></li>
        <li class="col-md-3 col-xs-6 col-sm-6"><a class="img-link" href="http://www.abecbrasil.org.br/novo/"><img src="{$baseUrl}/img/abec.png" id="abec"/></a></li>
        <li class="col-md-3 col-xs-6 col-sm-6"><a class="img-link" href="http://www.abeu.org.br/farol/abeu/"><img src="{$baseUrl}/img/abeu-2.png" id="abeu"/></a></li>
        <li class="col-md-3 col-xs-6 col-sm-6"><a class="img-link" href="http://repositorio.ifpb.edu.br/"><img src="{$baseUrl}/img/repositorio.jpg" alt="repositorio do ifpb" /></a></li>
      </ul>
    </div>
  </div>
{/if}
<footer class="page-footer" id="page-footer">
  <div class="content-container">
    <ul class="footer-box">
      <li class="title"><h4>Assuntos</h4></li>
      <li class="item">
        <a href="http://www.agricultura.gov.br/">Agropecuária</a>
      </li>
      <li class="item">
        <a href="http://www.cultura.gov.br/scdc/">Cidadania</a>
      </li>
      <li class="item">
        <a href="http://www.mct.gov.br/">Ciência e Tecnologia</a>
      </li>
      <li class="item">
        <a href="http://www.mc.gov.br/">Comunicações</a>
      </li>
      <li class="item">
        <a href="http://www.cultura.gov.br/">Cultura</a>
      </li>
      <li class="item">
        <a href="http://www.fazenda.gov.br/">Economia</a>
      </li>
      <li class="item">
        <a href="http://www.mec.gov.br/">Educação</a>
      </li>
      <li class="item">
        <a href="http://www.mme.gov.br/">Energia</a>
      </li>
      <li class="item">
        <a href="http://www.senado.gov.br/noticias/Jornal/emdiscussao/dependencia-quimica/iniciativas-do-governo-no-combate-as-drogas/plano-de-enfrentamento-ao-crack-tem-orcamento-modesto.aspx">Enfrentamento às drogas</a>
      </li>
      <li class="item">
        <a href="http://www.esporte.gov.br/">Esporte</a>
      </li>
    </ul>
    <ul class="footer-box">
      <li class="title"><h4>Sobre</h4></li>
      <li class="item"><a href="http://www.ifpb.edu.br/portal-do-estudante">Portal do estudante</a></li>
      <li class="item"><a href="http://periodicos.ifpb.edu.br/">Portal de periódicos</a></li>
      <li class="item"><a href="http://www.ifpb.edu.br/servidor">Portal do servidor</a></li>
      <li class="item"><a href="http://www.ifpb.edu.br/ti">Portal da TI</a></li>
      <li class="item"><a href="http://www.ifpb.edu.br/transparencia">Portal da Transferência</a></li>
    </ul>

    <ul class="footer-box">
      <li class="title"><h4>RSS</h4></li>
      <li class="item">o que é RSS?</li>
      <li class="item">Assine o nosso RSS</li>
    </ul>

    <ul class="footer-box">
      <li class="title"><h4>Redes Sociais</h4></li>
      <li class="item">
        <a href="https://www.facebook.com/EDITORAIFPB/">Facebook</a>
      </li>
      <li class="item">
        <a href="">Twitter</a>
      </li>
      <li class="item">
        <a href="">Youtube</a>
      </li>
      <li class="item">
        <a href="">Flickr</a>
      </li>
      <li class="item">
        <ul class="footer-box">
          <li class="title"><h4>Mapa do site</h4></li>
        </ul>
      </li>
    </ul>
  </div>
  <div class="sub-footer">
    <div class="content-container">
      <div class="left">
        <a href="http://www.acessoainformacao.gov.br/">
          <img src="{$baseUrl}/img/acesso-a-informacao.png" alt="Acesso a Informação">
        </a>
      </div>
      <div class="right">
        <a href="http://www.brasil.gov.br/">
          <img src="{$baseUrl}/img/brasil.png" alt="Brasil - Governo Federal">
        </a>
      </div>
    </div>
  </div>
</footer>

<script defer="defer" src="//barra.brasil.gov.br/barra.js" type="text/javascript"></script>
</body>
</html>

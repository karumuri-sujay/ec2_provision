<h1>Steps to provision EC2 instance from this repository</h1>
<ui>
  <li>Configure aws through CLI</li>
  <li>Make sure to have a proper AMI ID to be use</li>
</ul>

<h3>Commands required</h3>
<ol>
  <li>terraform init</li>
  <li>terraform plan -var="ami=<id>"</li>
  <li>terraform apply</li>
    <ul>
      <li>Enter the values accordingly</li>
    </ul>
</ol>

<div class="row">
    <div class="col-lg-12">
<?php if($tasks): ?>
  <?php foreach($tasks as $task): ?>
        <h1 class="page-header"><?php echo $task['name']; ?></h1>
    </div>
</div>
<ul class="list-group">
    <li class="list-group-item"><h5> Project Name <strong><?php echo $task['project_name']; ?></strong></h5></li>
    <li class="list-group-item">Created at <strong> <?php echo $task['due_date']; ?></strong></li>
    <li class="list-group-item">Due Date <strong> <?php echo $task['due_date']; ?></strong></li>
    <li class="list-group-item"><?php echo $task['body']; ?></li>
  <?php endforeach; ?>
<?php endif; ?>
</ul>
<hr>
<?php if($this->session->userdata('user_id' ) == $task['user_id']): ?>
  <a href="<?php echo base_url(); ?>tasks/edit/<?php echo $task['id']; ?>" class="btn btn-default pull-left">Edit</a>
  <?php echo form_open('/tasks/delete/'.$task['id']); ?>
    <input type="submit" value="Delete" class="btn btn-danger" >
  </form>
<?php endif; ?>


    
  